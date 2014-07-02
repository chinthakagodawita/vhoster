require 'vhoster'
require 'vhoster/command'

class Vhoster::CLI
  def self.run(*args)
    begin
      if $stdin.isatty
        $stdin.sync = true
      end
      if $stdout.isatty
        $stdout.sync = true
      end

      command = args.shift.strip rescue 'help'

      Vhoster::Command.load
      Vhoster::Command.run(command, args)
    rescue Interrupt
      `stty icanon echo`
      error("Command cancelled.")
    rescue => error
      exit 1
    end
  end
end
