## USB android autosuspend 

ADB constantly disconnects, shows device offline

https://www.kernel.org/doc/Documentation/usb/power-management.txt

$ cat /sys/module/usbcore/parameters/autosuspend
2


Edit the `/etc/default/grub` file and change the GRUB_CMDLINE_LINUX_DEFAULT line to add the usbcore.autosuspend=-1 option:

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash usbcore.autosuspend=-1"
```

Note that quit splash were already present options. So keep other options you have too.

After save the file, update grub:

sudo update-grub

And reboot.

Now check autosuspend value:

cat /sys/module/usbcore/parameters/autosuspend

And it should display `-1`.

