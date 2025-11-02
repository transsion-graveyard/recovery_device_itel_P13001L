# itel VistaTab 30 Pro (P13001L)

TWRP device tree for the itel VistaTab 30 Pro tablet (model P13001L).

## Device overview

- **Marketing name:** itel VistaTab 30 Pro  
- **Hardware model:** P13001L  
- **Form factor:** 13-inch Android tablet

## Hardware specifications

| Category | Details |
| --- | --- |
| **Platform** | MediaTek Helio G99 (MT6789) 6 nm SoC with octa-core CPU (2x 2.2 GHz Cortex-A76 + 6x 2.0 GHz Cortex-A55) and Mali-G57 MC2 GPU @ 1000 MHz |
| **Memory** | 8 GB LPDDR4X RAM |
| **Storage** | 256 GB UFS 2.2 internal storage, microSD/microSDHC/microSDXC support via hybrid nano-SIM slot |
| **Display** | 13 in IPS, 1920x1200 (16:10), 174 ppi, ~450 nit peak, 1500:1 contrast, 86% screen-to-body ratio, 16.7M colors |
| **Rear camera** | 13 MP CMOS sensor with LED flash, 1080p30 video capture, HDR and panorama modes |
| **Front camera** | 8 MP CMOS sensor, 1080p30 video |
| **Battery** | 10000 mAh Li-Ion (non-removable) with 18 W (9 V / 2 A) fast charging |
| **Dimensions** | 7 mm thickness, 689 g mass, metal/plastic chassis in space gray finish |
| **Connectivity** | Dual nano-SIM (or nano-SIM + microSD), LTE B1/B3/B5/B7/B8/B20/B38/B40/B41, WCDMA B1/B5/B8, GSM quad-band, Wi-Fi 802.11a/b/g/n/ac (2.4 & 5 GHz), Bluetooth 5.x (itel lists 5.2; DeviceSpecifications lists 5.0), GPS/A-GPS/GLONASS/BeiDou/Galileo, USB Type-C 2.0 OTG, 3.5 mm audio jack |

## Build instructions

```bash
# 1. Sync the minimal TWRP manifest
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync

# 2. Prepare the build environment
source build/envsetup.sh

# 3. Lunch and build
lunch twrp_P13001L-eng
m vendorbootimage
```

The recovery image will be created at `out/target/product/P13001L/vendor_boot.img`.

## Flashing instructions

```bash
fastboot flash vendor_boot out/target/product/P13001L/vendor_boot.img
fastboot reboot recovery
```
