# Galaxy Fold 2 (f2q) Proprietary Files

This directory contains proprietary binary files extracted from Samsung Galaxy Fold 2 stock ROM.

## Extraction Status: ⏳ Pending

These files need to be extracted from your device using the extraction script:

```bash
cd device/samsung/f2q
bash extract-files.sh
```

## Directory Structure

```
propretary/
├── lib/
│   ├── libcamera_client.so
│   ├── libcamera_metadata.so
│   ├── libaudio*.so
│   ├── libdrm.so
│   └── ...
├── lib64/
│   ├── libcamera_client.so
│   ├── libcamera_metadata.so
│   ├── libaudio*.so
│   ├── libdrm.so
│   └── ...
├── etc/
│   ├── firmware/
│   │   ├── modem.mbn
│   │   ├── adsp.mbn
│   │   └── ...
│   └── ...
└── hw/
    ├── audio.primary.sm8250.so
    ├── camera.sm8250.so
    ├── gralloc.sm8250.so
    └── ...
```

## Critical HALs to Extract

### Audio System
- `lib/hw/audio.primary.sm8250.so`
- `lib64/hw/audio.primary.sm8250.so`
- `lib/libaudio*.so`
- `lib64/libaudio*.so`
- `lib/libqtigef.so` (QCOM Audio Effects)
- `lib64/libqtigef.so`

### Camera System
- `lib/hw/camera.sm8250.so`
- `lib64/hw/camera.sm8250.so`
- `lib/libcamera*.so`
- `lib64/libcamera*.so`
- `lib/libmmcamera*.so`
- `lib64/libmmcamera*.so`

### Display & Graphics
- `lib/hw/gralloc.sm8250.so`
- `lib64/hw/gralloc.sm8250.so`
- `lib/libGLES_qcom.so`
- `lib64/libGLES_qcom.so`
- `lib/libdrm.so`
- `lib64/libdrm.so`
- `lib/libmm-omxcore.so`
- `lib64/libmm-omxcore.so`

### Sensors
- `lib/hw/sensors.sm8250.so`
- `lib64/hw/sensors.sm8250.so`
- `lib/libsensor*.so`
- `lib64/libsensor*.so`

### Fingerprint
- `lib/hw/fingerprint.sm8250.so`
- `lib64/hw/fingerprint.sm8250.so`
- `lib/libfingerprint*.so`
- `lib64/libfingerprint*.so`

### NFC
- `lib/hw/nfc.sm8250.so`
- `lib/libnfc*.so`
- `etc/nfcee_access.xml`
- `etc/libnfc-nci.conf`

### Bluetooth
- `lib/libbt-vendor.so`
- `lib64/libbt-vendor.so`
- `etc/bluetooth/

### Firmware Files
- `etc/firmware/modem.mbn` (Modem/Baseband)
- `etc/firmware/adsp.mbn` (Audio DSP)
- `etc/firmware/slpi.mbn` (Sensor Processor)
- `etc/firmware/venus.mbn` (Video Encoder)
- `etc/firmware/gpu.mbn` (GPU)

### QCOM Libraries
- `lib/libqmi_cci.so`
- `lib64/libqmi_cci.so`
- `lib/libqmi_client_qmux.so`
- `lib64/libqmi_client_qmux.so`
- All other `libqmi*.so` and `libqmi_client*.so`

## Extraction Process

1. **Connect your device** with USB debugging enabled
```bash
adb devices
adb root
adb remount
```

2. **Run extraction script**
```bash
cd device/samsung/f2q
bash extract-files.sh
```

3. **Move extracted files**
```bash
mv extracted/* ../../vendor/samsung/f2q/proprietary/
```

4. **Verify extraction**
```bash
ls -la vendor/samsung/f2q/proprietary/
```

## Important Notes

⚠️ **DO NOT COMMIT BINARY FILES TO PUBLIC REPOSITORY**
- These are proprietary Samsung/QCOM files
- Add `proprietary/` to `.gitignore` if sharing this repo publicly
- Only extract these files for your personal builds

✅ **Recommended Setup:**
- Keep this repository private
- Extract files locally only
- Share only the device tree structure (not the blobs)
