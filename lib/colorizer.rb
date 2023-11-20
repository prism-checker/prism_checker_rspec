# frozen_string_literal: true

module PrismCheckerRspec
  class Colorizer
    def self.colorize(text, code)
      RSpec::Core::Formatters::ConsoleCodes.wrap(text, code)
    end
  end
end
