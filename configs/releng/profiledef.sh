#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="aurumos"
iso_label="AURUM_$(date +%Y%m)"
iso_publisher="AurumOS"
iso_application="AurumOS Live Desktop"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/etc/skel/.xinitrc"]="0:0:755"
  ["/etc/skel/.config/polybar/launch.sh"]="0:0:755"
)
