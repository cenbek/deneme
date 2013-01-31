ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require "minitest/autorun"
require "minitest/rails"
require "minitest/pride"
require "minitest/rails/capybara"
#require "capybara/rails"

include Capybara::DSL
#include Rails.application.routes.url_helpers


class MiniTest::Rails::Spec
  
  class << self
    alias :context :describe
  end
end

class MiniTest::Rails::Acceptance < MiniTest::Rails::Spec
 
 
end


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
 # fixtures :all

  # Add more helper methods to be used by all tests here...
end



MiniTest::Spec.register_spec_type /AcceptanceTest$/, MiniTest::Rails::Acceptance

#MiniTest::Spec.register_spec_type( /Integration$/, AcceptanceSpec )
