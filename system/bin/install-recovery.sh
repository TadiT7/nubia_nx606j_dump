#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:768823e90cf122b5551ea49d9e01fe4ea35bc9b9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:dad0ea7b1ef84838134ebf9e8e1703cb396fd100 EMMC:/dev/block/bootdevice/by-name/recovery 768823e90cf122b5551ea49d9e01fe4ea35bc9b9 67108864 dad0ea7b1ef84838134ebf9e8e1703cb396fd100:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
