```bash
lsusb
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 003: ID 2a7a:939f  CASUE USB KB
Bus 001 Device 002: ID 093a:2510 Pixart Imaging, Inc. Optical Mouse
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

```
Устройства ввода
```bash
root@time-uchet01:~# lsinput
/dev/input/event0
   bustype : BUS_HOST
   vendor  : 0x0
   product : 0x1
   version : 0
   name    : "Power Button"
   phys    : "PNP0C0C/button/input0"
   bits ev : EV_SYN EV_KEY

/dev/input/event1
   bustype : BUS_HOST
   vendor  : 0x0
   product : 0x1
   version : 0
   name    : "Power Button"
   phys    : "LNXPWRBN/button/input0"
   bits ev : EV_SYN EV_KEY

/dev/input/event2
   bustype : BUS_HOST
   vendor  : 0x0
   product : 0x6
   version : 0
   name    : "Video Bus"
   phys    : "LNXVIDEO/video/input0"
   bits ev : EV_SYN EV_KEY

/dev/input/event3
   bustype : (null)
   vendor  : 0x0
   product : 0x0
   version : 0
   name    : "HDA Intel PCH Rear Mic"
   phys    : "ALSA"
   bits ev : EV_SYN EV_SW

/dev/input/event4
   bustype : (null)
   vendor  : 0x0
   product : 0x0
   version : 0
   name    : "HDA Intel PCH Front Mic"
   phys    : "ALSA"
   bits ev : EV_SYN EV_SW

/dev/input/event5
   bustype : (null)
   vendor  : 0x0
   product : 0x0
   version : 0
   name    : "HDA Intel PCH Line"
   phys    : "ALSA"
   bits ev : EV_SYN EV_SW

/dev/input/event6
   bustype : (null)
   vendor  : 0x0
   product : 0x0
   version : 0
   name    : "HDA Intel PCH Line Out"
   phys    : "ALSA"
   bits ev : EV_SYN EV_SW

```
dmesg
```bash
root@time-uchet01:~# dmesg | grep usb
[    0.064038] usbcore: registered new interface driver usbfs
[    0.064045] usbcore: registered new interface driver hub
[    0.064049] usbcore: registered new device driver usb
[    1.144110] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    1.144111] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.144112] usb usb1: Product: EHCI Host Controller
[    1.144113] usb usb1: Manufacturer: Linux 4.15.0-142-generic ehci_hcd
[    1.144114] usb usb1: SerialNumber: 0000:00:1a.0
[    1.164104] usb usb2: New USB device found, idVendor=1d6b, idProduct=0002
[    1.164106] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.164106] usb usb2: Product: EHCI Host Controller
[    1.164107] usb usb2: Manufacturer: Linux 4.15.0-142-generic ehci_hcd
[    1.164108] usb usb2: SerialNumber: 0000:00:1d.0
[    1.480050] usb 1-1: new high-speed USB device number 2 using ehci-pci
[    1.500036] usb 2-1: new high-speed USB device number 2 using ehci-pci
[    1.636478] usb 1-1: New USB device found, idVendor=8087, idProduct=0024
[    1.636481] usb 1-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    1.656788] usb 2-1: New USB device found, idVendor=8087, idProduct=0024
[    1.656789] usb 2-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    1.944049] usb 2-1.6: new full-speed USB device number 3 using ehci-pci
[    2.053854] usb 2-1.6: New USB device found, idVendor=ffff, idProduct=0035
[    2.053857] usb 2-1.6: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    2.053859] usb 2-1.6: Product: USB Reader
[    2.053860] usb 2-1.6: Manufacturer: USB Reader
[    2.053862] usb 2-1.6: SerialNumber: SN201706VER1
[    3.189199] usbhid 2-1.6:1.1: couldn't find an input interrupt endpoint
[    3.189212] usbcore: registered new interface driver usbhid
[    3.189212] usbhid: USB HID core driver
[    3.232218] Modules linked in: i915(+) i2c_algo_bit psmouse drm_kms_helper syscopyarea sysfillrect sysimgblt usbhid hid pata_acpi fb_sys_fops r8169 drm mii video
[    3.236593] input: USB Reader USB Reader as /devices/pci0000:00/0000:00:1d.0/usb2/2-1/2-1.6/2-1.6:1.0/0003:FFFF:0035.0001/input/input5
[    3.296204] hid-generic 0003:FFFF:0035.0001: input,hidraw0: USB HID v1.10 Keyboard [USB Reader USB Reader] on usb-0000:00:1d.0-1.6/input0

```