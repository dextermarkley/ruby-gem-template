require 'json'

unless RUBY_VERSION >= '1.9'
  abort('This library requires ruby 1.9+: cannot proceed')
end

module GemName
  # Gem-Description
  class ModuleName
    def initialize(opts)
      default_options = {
        option1: 'xyz',
        log_level: 'error'
      }

      @options = default_options.merge(opts)
    end

    def logger(level, message)
      case level
      when :debug
        return false if @options[:log_level] == 'info' || @options[:log_level] == 'error'
      when :info
        return false if @options[:log_level] == 'error'
      end
      puts "CloudEndure::Client -- #{level}: #{message}"
    end

    def private_method_example(string)
      logger(:debug, "processing #{string}")
      "Here is your string: #{string}"
    end

    def public_method_example(string)
      private_method_example(string)
    end

    private :logger, :private_method_example
  end
end
