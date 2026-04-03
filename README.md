# AliDeviceiOS

Aliyun Fraud Detection iOS Device Risk SDK packaged for Swift Package Manager.

This repository keeps the `deviceiOS.xcframework` artifact and removes the legacy plain `deviceiOS.framework`, because SwiftPM distributes `xcframework` binaries reliably across device and simulator.

The current binary appears to be the non-IDFA variant:

- The official Aliyun documentation mentions console-delivered SDK variants with and without IDFA support.
- The bundled binary does not expose `ASIdentifierManager` or `AppTrackingTransparency` symbols, so this package does not add `AdSupport` or `AppTrackingTransparency` linker requirements.

## Install

Add the package in Xcode with:

```text
https://github.com/lfd-gitHub/AliDeviceiOS.git
```

Then depend on the `AliDeviceiOS` product.

## Usage

```swift
import AliDeviceiOS

SecurityDevice.sharedInstance().initDevice("your_app_key") { code in
    print("init result:", code)
}

let session = SecurityDevice.sharedInstance().getSession()
print(session?.session ?? "")
```

## Notes

- Import the SwiftPM product as `AliDeviceiOS`.
- The exported SDK symbols still come from the upstream `deviceiOS` binary.
- The official document used for packaging is:
  `https://help.aliyun.com/zh/fraud-detection/developer-reference/device-risk-detection-sdk-for-ios`
