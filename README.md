# Upgrading from Xamarin.iOS 15.4 and XCode 13.2.1 to Xamarin.iOS 16 and XCode 14.1 breaks symbol creation for referenced packages. Only main app produces symbols.

https://github.com/xamarin/xamarin-macios/issues/17180

### Steps to Reproduce

1. clone https://github.com/tdevere/missingsymbols
2. Configure build for Xamarin.iOS 15.4 and XCode 13.2.1; signed build (I am using App Center build services for this test however, the issue reproduces on local builds as well.
3. The final product includes symbols for the main app and referenced package - libSkiaSharp.framework.dSYM in this sample (this reference is used for example only, the problem happens on all referenced packages as far as we know.)
4. Now, change the build to configuration to Xamarin.iOS 16.0 and XCode 14.1 and rebuild

### Expected Behavior
we would expect to see both symbols get created

### Actual Behavior
only the main application symbols are created. 

### Environment

<!--
1. How to get version information: https://github.com/xamarin/xamarin-macios/wiki/Diagnosis#version-information
2. Paste into the code block below (between ```)
-->

<details>
<summary>Version information</summary>

```
Image: macos-12
Version: 20221215.1
Included Software: https://github.com/actions/runner-images/blob/macOS-12/20221215.1/images/macos/macos-12-Readme.md
Xamarin.iOS 15.4
XCode 13.2.1
Visual Studio for Mac = 2022  17.4.2.17 
```

</details>

### Build Logs
[1_Build (1).txt](https://github.com/tdevere/missingsymbols/files/10386352/1_Build.1.txt)

### Example Project (If Possible)
https://github.com/tdevere/missingsymbols
<!--
Switch to the "Preview" tab to ensure your issue renders correctly.
-->
