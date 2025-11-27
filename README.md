# Media Jugg

A simple ruby library for downloading videos/audios from sources with minimal config ( uses yt-dlp behind the scenes )

### Installation guide

Download this globally using the gem install command

`gem install media-jugg`

Or include it locally in your rails project with bundler

`bundle add media-jugg`

This will automatically include a command you can use anywhere in your terminal just run mediajugg for more options and commands

### Download an audio file

Run this command anywhere in the terminal. Make sure to wrap the url in strings as terminal is picky about certain characters.

`mediajugg audio 'audio_url'`

### Download a video file

`mediajugg video 'video_url'`

### Download a subtitles file

`mediajugg subtitles 'video_url'`

### Using in Ruby 

If you want to use this library directly via Ruby than you can call the `MediaJugg` class directly instead of using the command line exe.

This would look like

```rb
require 'media-jugg'
MediaJugg.video('video_url')
```

Which will automatically download the video file

TODO: We should allow passing a block to the command to open the final file as a local file. And also allow specifying the path to the downloaded file. This for the CLI and ruby API.


### Common issues

#### 1. zsh: no matches found
This is because you passed the url without wrapping it in quotes so terminal is trying to read the special url characters as commands. fix this by wrapping the url in quotes.

❌ mediajugg video http://videourl.com 
✅ mediajugg video 'http://videourl.com'

Can be either single quote ' or double quotes "

### How to test locally

Run this command to run script locally and it will include all needed files with the -I lib part

```sh
ruby -I lib ./bin/mediajugg audio 'https://youtu.be/ygpZNRzs-Y0?si=StlZyGMyCUjowTIa'
```


### Reasons for building

for example downloading videos from yt without specifying the codec on mac atleast results in an invalid video. 

Which requires me always to append a certain command to the end of my yt-dlp call and its annoying to always do this.

For extracting audios its easier to remember but still why not create a command thats even easier.

Commands I use with yt-dlp

yt-dlp url -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]' -S vcodec:h264

We want mp4 and h264

Problem with this is for videos it will download the higest res file which can be extremely big so not always ideal.

The use of the Media Jugg command might look something like this

```sh
mediajugg yt-url
```

Potentially the library could detect what source its using from the url and apply appropriate settings.