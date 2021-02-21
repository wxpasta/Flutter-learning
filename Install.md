# Install

Doctor summary (to see all details, run flutter doctor -v):

[✓] Flutter (Channel stable, 1.22.6, on macOS 11.2.1 20D74 darwin-x64, locale zh-Hans-CN)



## iOS

✗ Xcode installation is incomplete; a full installation is necessary for iOS development.

Download at: https://developer.apple.com/xcode/download/

​	Or install Xcode via the App Store.

​	Once installed, run:

​			sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer

​			sudo xcodebuild -runFirstLaunch



[✓] Xcode - develop for iOS and macOS (Xcode 12.4)

Once installed, run:

```
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
```

  **✗** **CocoaPods installed but not working.**

​    **You appear to have CocoaPods installed but it is not working.**

​    **This can happen if the version of Ruby that CocoaPods was installed with is different from the one being used to**

​    **invoke it.**

​    **This can usually be fixed by re-installing CocoaPods. For more info, see**

​    **https://github.com/flutter/flutter/issues/14293.**

   **To re-install CocoaPods, run:**

```
sudo gem install cocoapods
```



## Android

[!] Android toolchain - develop for Android devices (Android SDK version 30.0.2)
    ! Some Android licenses not accepted.  To resolve this, run: 

```
flutter doctor --android-licenses
```



Q：Android Studio (version 4.1)； Flutter plugin not installed and Dart plugin not installed errors

A:

```
ln -s ~/Library/Application\ Support/Google/AndroidStudio4.1/plugins ~/Library/Application\ Support/AndroidStudio4.1
```



## VS Code

[✓] VS Code (version 1.53.2)

​	✓ Flutter extension installed.