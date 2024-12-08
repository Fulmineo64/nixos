{ config, pkgs, ... }:
/*let
androidComposition = pkgs.androidenv.composeAndroidPackages {
	includeNDK = true;
	platformVersions = [ "35" ];
	abiVersions = [ "armeabi-v7a" "arm64-v8a" ];
};
in*/
let
  androidComposition = pkgs.androidenv.composeAndroidPackages {
    cmdLineToolsVersion = "16.0-rc01";
    toolsVersion = "26.1.1";
    platformToolsVersion = "35.0.2";
    buildToolsVersions = [ "35.0.0" ];
    includeEmulator = false;
    emulatorVersion = "latest";
    platformVersions = [ "35" ];
    includeSources = false;
    includeSystemImages = false;
    systemImageTypes = [ "google_apis_playstore" ];
    abiVersions = [ "armeabi-v7a" "arm64-v8a" ];
    cmakeVersions = [ "3.10.2" ];
    includeNDK = true;
    ndkVersions = ["22.0.7026061"];
    useGoogleAPIs = false;
    useGoogleTVAddOns = false;
    includeExtras = [
      "extras;google;gcm"
    ];
  };
in
{
  environment.systemPackages = with pkgs; [
    flutter
    (android-studio.withSdk androidComposition.androidsdk)
    google-chrome
	  temurin-bin # required for android studio
    gcc # required to compile encore
    docker # optional - for encore examples
    postgresql # Database
    pgadmin4-desktopmode # Database administration console
  ];

  environment.variables = {
    CHROME_EXECUTABLE = "${pkgs.google-chrome}/bin/google-chrome-stable";
    ANDROID_SDK_ROOT = "${androidComposition.androidsdk}/libexec/android-sdk";
    ENCORE_RUNTIMES_PATH="/home/nicholas/.encore/encore/runtimes";
    ENCORE_GOROOT="/home/nicholas/.encore/encore-go/go";
  };

  environment.sessionVariables = {
    PATH = [
      "/home/nicholas/.encore/encore"
    ];
  };

  nixpkgs.config.android_sdk.accept_license = true;
}
