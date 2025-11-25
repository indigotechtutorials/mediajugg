import sys
sys.path.insert(0, 'dlp/yt-dlp')
import yt_dlp
import argparse


youtube_url = sys.argv[1]
print("YT URL FROM ARG IS", youtube_url)
yt_opts = yt_dlp.parse_options(sys.argv[2:]).ydl_opts
print("YT OPTS IS", yt_opts)
ydl = yt_dlp.YoutubeDL(yt_opts)
print("Did YDL")
ydl.download(youtube_url)
print("DID DL")