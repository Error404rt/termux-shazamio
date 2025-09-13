#!/data/data/com.termux/files/usr/bin/bash

echo "=== Termux ShazamIO Installer ==="
echo "Проверяем Termux пакеты..."

pkg update -y
pkg install -y proot-distro git python python-pip curl wget

echo "Устанавливаем proot-distro и Arch Linux..."
proot-distro install archlinux

echo "Настраиваем Arch и shazamio..."
./setup_arch.sh

echo "Создаем symlink для удобства..."
ln -sf ~/.termux-proot-distro/installed-rootfs/archlinux/usr/bin/python $PREFIX/bin/shazamio-python

echo "Готово! Запустите: python shazamio_example.py"
echo "Для входа в Arch: proot-distro login archlinux"
