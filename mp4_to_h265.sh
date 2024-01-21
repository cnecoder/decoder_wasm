#!/bin/bash

# 解码转换后可以使用 ffprobe -v error -show_frames Ink_Art_720P_4M_60FPS.hevc | grep "pict_type" 查看帧类型

# 此脚本转换出来 h265 文件全部为 I 帧和 P 帧，色彩深度为 8bit
echo "Converting to 720P_4M_60FPS ......"
ffmpeg -i $1 -r 60 -q:v 1 -c:v libx265 -x265-params "keyint=4:min-keyint=4:bframes=0" -pix_fmt yuv420p -b:v 4000k -vf scale=1280:720 $2_720P_4M_60FPS.h265
echo "Convert to 720P_4M_60FPS completly"

echo "Converting to 720P_4M_30FPS ......"
ffmpeg -i $1 -r 30 -q:v 1 -c:v libx265 -x265-params "keyint=4:min-keyint=4:bframes=0" -pix_fmt yuv420p -b:v 4000k -vf scale=1280:720 $2_720P_4M_30FPS.h265
echo "Convert to 720P_4M_30FPS completly"

echo "Converting to 1080P_4M_60FPS ......"
ffmpeg -i $1 -r 60 -q:v 1 -c:v libx265 -x265-params "keyint=4:min-keyint=4:bframes=0" -pix_fmt yuv420p -b:v 4000k -vf scale=1920:1080 $2_1080P_4M_60FPS.h265
echo "Convert to 1080P_4M_60FPS completly"

echo "Converting to 1080P_4M_30FPS ......"
ffmpeg -i $1 -r 30 -q:v 1 -c:v libx265 -x265-params "keyint=4:min-keyint=4:bframes=0" -pix_fmt yuv420p -b:v 4000k -vf scale=1920:1080 $2_1080P_4M_30FPS.h265
echo "Convert to 1080P_4M_30FPS completly"

echo "Converting to 2K_4M_60FPS ......"
ffmpeg -i $1 -r 60 -q:v 1 -c:v libx265 -x265-params "keyint=4:min-keyint=4:bframes=0" -pix_fmt yuv420p -b:v 4000k -vf scale=2560:1440 $2_2K_4M_60FPS.h265
echo "Convert to 2K_4M_60FPS completly"

echo "Converting to 2K_4M_30FPS ......"
ffmpeg -i $1 -r 30 -q:v 1 -c:v libx265 -x265-params "keyint=4:min-keyint=4:bframes=0" -pix_fmt yuv420p -b:v 4000k -vf scale=2560:1440 $2_2K_4M_30FPS.h265
echo "Convert to 2K_4M_30FPS completly"
