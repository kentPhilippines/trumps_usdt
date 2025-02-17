#!/bin/bash

# 需要安装 inkscape 和 imagemagick

# 从SVG生成PNG
inkscape -w 16 -h 16 favicon.svg -o favicon-16x16.png
inkscape -w 32 -h 32 favicon.svg -o favicon-32x32.png
inkscape -w 180 -h 180 apple-touch-icon.svg -o apple-touch-icon.png
inkscape -w 192 -h 192 favicon.svg -o android-chrome-192x192.png
inkscape -w 512 -h 512 favicon.svg -o android-chrome-512x512.png

# 生成favicon.ico (包含16x16和32x32)
convert favicon-16x16.png favicon-32x32.png favicon.ico 