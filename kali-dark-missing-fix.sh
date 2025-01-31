#!/bin/bash

# Cek apakah file GreenOnBlack.colorscheme ada di salah satu lokasi
if [ -f /usr/share/qtermwidget6/color-schemes/GreenOnBlack.colorscheme ]; then
    TARGET_DIR="/usr/share/qtermwidget6/color-schemes/"
elif [ -f /usr/local/share/qtermwidget6/color-schemes/GreenOnBlack.colorscheme ]; then
    TARGET_DIR="/usr/local/share/qtermwidget6/color-schemes/"
else
    echo "File GreenOnBlack.colorscheme tidak ditemukan di lokasi yang diharapkan."
    exit 1
fi

# Tentukan path file output
OUTPUT_FILE="${TARGET_DIR}Kali-Dark.colorscheme"

# Buat file menggunakan sed
sed -e "\
[General]\
Description=Kali Dark\
Blur=true\
Opacity=0.95\
\
[Background]\
Color=35,37,46\
\
[BackgroundIntense]\
Color=35,37,46\
\
[Foreground]\
Color=255,255,255\
\
[ForegroundIntense]\
Color=255,255,255\
\
[Color0]\
Color=31,34,41\
\
[Color0Intense]\
Color=25,131,136\
\
[Color1]\
Color=212,25,25\
\
[Color1Intense]\
Color=236,1,1\
\
[Color2]\
Color=94,189,171\
\
[Color2Intense]\
Color=71,212,185\
\
[Color3]\
Color=254,164,76\
\
[Color3Intense]\
Color=255,138,24\
\
[Color4]\
Color=54,123,240\
\
[Color4Intense]\
Color=39,127,255\
\
[Color5]\
Color=151,85,179\
\
[Color5Intense]\
Color=150,42,195\
\
[Color6]\
Color=73,174,230\
\
[Color6Intense]\
Color=5,161,247\
\
[Color7]\
Color=230,230,230\
\
[Color7Intense]\
Color=255,255,255" > "$OUTPUT_FILE"

# Konfirmasi file telah dibuat
echo "File telah dibuat di: $OUTPUT_FILE"
