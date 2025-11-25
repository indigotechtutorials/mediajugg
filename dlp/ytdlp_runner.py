import sys, os
sys.path.append(os.path.join(sys.path[0], 'yt-dlp'))
import yt_dlp
import argparse


youtube_url = sys.argv[1]
yt_opts = yt_dlp.parse_options(sys.argv[2:]).ydl_opts
ydl = yt_dlp.YoutubeDL(yt_opts)
ydl.download(youtube_url)