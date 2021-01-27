package com.ricardorb.is_firebase_test_lab_activated

import android.provider.Settings
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler

/** IsFirebaseTestLabActivatedPlugin */
class IsFirebaseTestLabActivatedPlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private var isFirebaseTestLabActivated: Boolean? = null

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        if (isFirebaseTestLabActivated == null) {
            val testLabSetting: String? = Settings.System.getString(flutterPluginBinding.applicationContext.contentResolver, "firebase.test.lab")
            isFirebaseTestLabActivated = "true" == testLabSetting
        }
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "is_firebase_test_lab_activated")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: MethodChannel.Result) {
        if (call.method == "isFirebaseTestLabActivated") {
            result.success(isFirebaseTestLabActivated)
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
