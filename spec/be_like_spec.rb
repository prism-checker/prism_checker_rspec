# frozen_string_literal: true

require 'spec_helper'
require 'prism_checker_rspec'

class DummyPage < SitePrism::Page
  def text
    'text'
  end

  def find(_)
    nil
  end
end

describe '.be_like matcher' do
  context 'when expectation match' do
    it 'successfully pass' do
      expect(DummyPage.new).to be_like('text')
    end
  end

  context 'when expectation not met' do
    it 'raises error' do
      expect { expect(DummyPage.new).to be_like('text1') }.to raise_error RSpec::Expectations::ExpectationNotMetError
    end
  end
end
