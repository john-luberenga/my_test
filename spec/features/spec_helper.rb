# frozen_string_literal: true
require 'rspec/expectations'
require "capybara/spec/spec_helper"
require "pry"
require "capybara/rspec"

RSpec.configure do |config|
  Capybara::SpecHelper.configure(config)
  config.include Capybara::DSL :type => :request
end
