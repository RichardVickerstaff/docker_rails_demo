ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'database_cleaner'

RSpec.configure do |config|
  config.include Mongoid::Matchers, type: :model

  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.infer_spec_type_from_file_location!

  config.before(:suite) do
    FactoryGirl.lint
  end

  config.before(:each) do
    DatabaseCleaner.clean
  end
end
