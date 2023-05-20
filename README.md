# aebf - Android Encryption Bruteforcer for TWRP

*aebf* is a simple bruteforce program made for finding lost PINs on devices with TWRP installed.

## Limitations

*aebf* works on TWRP (TeamWin Recovery Project) recovery, and you generally have to have your bootloader unlocked to install TWRP.

*aebf* is limited to the speed of the TWRP decryption system, which takes around 1.8 seconds per try (might be dependant on device speed).

*aebf* is limited to 4, 5, 6, 7 or 8 digit PINs.

## How to use

First, [download](https://github.com/Romanio0089/aebf-twrp/releases/latest) aebf with ADB (and [ADB](https://developer.android.com/tools/releases/platform-tools) if you downloaded aebf without ADB).

Install ADB drivers for your device by : [15 seconds ADB Installer](https://forum.xda-developers.com/t/official-tool-windows-adb-fastboot-and-drivers-15-seconds-adb-installer-v1-4-3.2588979/), [Google USB Driver](https://developer.android.com/studio/run/win-usb), or [Samsung Android USB Driver](https://developer.samsung.com/android-usb-driver).

If you chose aebf without ADB, place the aebf.bat file in the folder with the ADB executable (adb.exe).

Launch aebf.bat and select the PIN digit number, and the bruteforce starts.

## Connection Problems

Sometimes, even if ADB drivers are correctly installed, the device isn't detected by ADB. To fix this, go in the Advanced screen on TWRP, start ADB Sideload, quit ADB Sideload, and device should be detected.
