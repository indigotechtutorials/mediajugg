import sys
sys.path.insert(0, 'dlp/yt-dlp')
import yt_dlp
import argparse


youtube_url = sys.argv[1]
yt_opts = yt_dlp.parse_options(sys.argv[2:]).ydl_opts
ydl = yt_dlp.YoutubeDL(yt_opts)
ydl.download(youtube_url)