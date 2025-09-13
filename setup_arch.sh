#!/data/data/com.termux/files/usr/bin/bash

proot-distro login archlinux --shared-tmp -- bash << 'EOF'
echo "Настраиваем Arch Linux..."

pacman-key --init
pacman -Syu --noconfirm
pacman -S --noconfirm base-devel python python-pip git ffmpeg

echo "Устанавливаем shazamio и зависимости..."
pip install shazamio
pip install audioop-lts  # Добавляем на всякий случай

echo "Тестируем установку..."
python -c "import shazamio; print('ShazamIO OK!')"

echo "Arch готов!"
EOF
