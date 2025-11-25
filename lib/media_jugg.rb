require 'media_jugg/base_methods'

class MediaJugg
  extend BaseMethods
  class << self
    def audio(url)
      dlp_runner(url, '-x', '--audio-format', 'mp3')
    end

    def video(url)
      dlp_runner(url, 'f', 'bestvideo[ext=mp4]+bestaudio[ext=m4a]', '-S', 'vcodec:h264')
    end
  end
end