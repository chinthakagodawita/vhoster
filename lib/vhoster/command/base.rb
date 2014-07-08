# Base command class.
require 'vhoster'

class Vhoster::Command::Base
  def initialize(args = [], options = {})
    @args = args
    @options = options
  end

  # Auto-register this method on class load.
  def self.method_added(method_name)
    # Ignore if this is the base class.
    return if self == Vhoster::Command::Base
    # Also ignore private or protected methods.
    return if protected_method_defined?(method_name)
    return if private_method_defined?(method_name)

    puts self.to_s

    # Register this command so it can be invoked later.
    Vhoster::Command.register_command(
      :name => method_name.to_s,
      :klass => self
    )

    puts "hi2: #{method_name}"
  end
end
