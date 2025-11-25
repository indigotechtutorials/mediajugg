class MediaJugg
  module BaseMethods
    def dlp_runner(url, *args)
      # TODO: Call yt-dlp library via python3 and importzip
      argument_string = args.join(' ')
      command_to_run = "yt-dlp #{url} #{argument_string}"
      system(command_to_run)
    end
  end
end
