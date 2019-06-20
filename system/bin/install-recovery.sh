#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:60388686:2e42c1b1cab1a53d1679ea3b25fe0d78270d6ad5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54146378:de12c13311a435e2a1435e102b76c5b4fcd0d5a4 EMMC:/dev/block/bootdevice/by-name/recovery 2e42c1b1cab1a53d1679ea3b25fe0d78270d6ad5 60388686 de12c13311a435e2a1435e102b76c5b4fcd0d5a4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
