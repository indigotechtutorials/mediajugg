Gem::Specification.new do |s|
  s.name        = "media-jugg"
  s.version     = "0.0.7"
  s.summary     = "Download audios/videos from any sources"
  s.description = "A simplified wrapper around the yt-dlp library and setup for Ruby"
  s.authors     = ["Indigo Tech"]
  s.email       = "indigo@tech.com"
  s.files       = Dir.glob('./lib/**/*').concat(['dlp/yt-dlp', 'dlp/ytdlp_runner.py', 'bin/mediajugg'])
  s.homepage    =
    "https://rubygems.org/gems/media-jugg"
  s.license       = "MIT"
  s.executables << 'mediajugg'
end