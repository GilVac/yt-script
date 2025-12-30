#!/bin/bash

echo "جاري تثبيت YouTube Downloader..."

# تثبيت المتطلبات
sudo apt update
sudo apt install -y yt-dlp ffmpeg zenity python3-pip

# تحديث yt-dlp
pip3 install --upgrade yt-dlp

# نسخ السكريبت
sudo cp yt-downloader /usr/local/bin/yt
sudo chmod +x /usr/local/bin/yt

# إنشاء اختصار سطح المكتب
cat > ~/.local/share/applications/yt-downloader.desktop << EOF
[Desktop Entry]
Name=YouTube Downloader
Comment=تنزيل من اليوتيوب
Exec=/usr/local/bin/yt -g
Icon=video-x-generic
Terminal=false
Type=Application
Categories=AudioVideo;Video;
EOF

echo "تم التثبيت بنجاح!"
echo "يمكنك الآن استخدام:"
echo "  yt [رابط]          # تنزيل فيديو"
echo "  yt -a [رابط]       # تنزيل صوت"
echo "  yt -g              # فتح الواجهة الرسومية"
