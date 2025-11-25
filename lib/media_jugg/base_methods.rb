class MediaJugg
  module BaseMethods
    def dlp_runner(url, *args)
      argument_string = args.join(' ')
      path_to_dlp_runner = File.join(File.dirname(File.expand_path(__FILE__)), '../../dlp/ytdlp_runner.py')
      command_to_run = "python3 #{path_to_dlp_runner} #{url} #{argument_string}"
      system(command_to_run)
    end
  end
end
