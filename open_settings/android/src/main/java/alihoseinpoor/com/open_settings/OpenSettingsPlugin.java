package alihoseinpoor.com.open_settings;

import android.content.Intent;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

public class OpenSettingsPlugin implements MethodCallHandler {
    private Registrar registrar;

    private OpenSettingsPlugin(Registrar registrar) {
        this.registrar = registrar;
    }

    public static void registerWith(Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "open_settings");
        channel.setMethodCallHandler(new OpenSettingsPlugin(registrar));
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        String setting = (String) call.arguments;
        String target;
        System.out.println("salam : " + setting);
        if (call.method.equals("openSettings")) {
            switch (setting) {
                case "wifi":
                    target = "android.settings.WIFI_SETTINGS";
                    handleJumpToSetting(target);
                    break;
                case "data":
                    target = "android.settings.DATA_ROAMING_SETTINGS";
                    handleJumpToSetting(target);
                    break;
                case "location":
                    target = "android.settings.LOCATION_SOURCE_SETTINGS";
                    handleJumpToSetting(target);
                    break;
                case "setting":
                    target = "android.settings.APPLICATION_SETTINGS";
                    handleJumpToSetting(target);
                    break;
                case "bluetooth":
                    target = "android.settings.BLUETOOTH_SETTINGS";
                    handleJumpToSetting(target);
                    break;
                case "notification":
                    target = "android.settings.NOTIFICATION_SETTINGS";
                    handleJumpToSetting(target);
                    break;
            }
        } else {
            result.notImplemented();
        }
    }

    private void handleJumpToSetting(String target) {
        Intent intent = new Intent(target);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        registrar.context().startActivity(intent);
    }
}
