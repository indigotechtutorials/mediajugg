class MediaJugg
  module BaseMethods
    def dlp_runner(url, *args)
      argument_string = args.join(' ')
      command_to_run = "python3 dlp/ytdlp_runner.py #{url} #{argument_string}"
      system(command_to_run)
    end
  end
end
