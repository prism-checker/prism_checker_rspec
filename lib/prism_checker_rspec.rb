# frozen_string_literal: true

require 'colorizer'

RSpec::Matchers.define(:be_like) do |expected|
  checker = PrismChecker::Checker.new(colorizer: PrismCheckerRspec::Colorizer)

  match do |actual|
    checker.check(actual, expected)
  end

  failure_message do |_actual|
    checker.report
  end
end
