require 'vhoster'

module Vhoster
  module Command
    class CommandFailed  < RuntimeError; end

    # Load all sub-command files (based off Heroku).
    def self.load
      Dir[File.join(File.dirname(__FILE__), "command", "*.rb")].each do |file|
        require file
      end
    end

    # Parses the command and arguments into a runnable command object and
    # arguments.
    def self.parse_input(command, args = [])
      # Certain flags take precedence over actual commands.
      if args.include?('-h') || args.include?('--help')
        args.unshift(command) unless command =~ /^-.*/
        command = 'help'
        # method = parse(command)
      end

      if command == '--version'
        command = 'version'
        # method = parse(command)
      end

    end

    def self.run(command, args = [])
      begin
        runner, method = parse_input(cmd, args)
        runner.exec(method)
      # rescue Interrupt, StandardError, SystemExit => e
        # raise(e)
      rescue CommandFailed => e
        error e.message
      end
    end
  end
end
