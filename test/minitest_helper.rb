require 'simplecov'
#SimpleCov.adapters.define 'rails' do

  #add_group 'testcontroller', 'test/controllers'
  #add_group 'testintegration', 'test/integrationcontrollers'
  #add_group 'test', 'test/controllers'
  #add_group 'test', 'test/controllers'
  #add_group 'test', 'test/controllers'
  
  
#end


SimpleCov.start 'rails'

#SimpleCov.start do
#  add_filter "/test/"
#end

puts "required simplecov"


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

class MiniTest::Rails::Model
  # make fixtures available within models spec
 # include MiniTest::Rails::Fixtures
end

class MiniTest::Rails::Controller
  # Add methods to be used by controller specs here
end

class MiniTest::Rails::Helper
  # Add methods to be used by helper specs here
end

class MiniTest::Rails::Mailer
  # Add methods to be used by mailer specs here
end

class MiniTest::Rails::Integration
  # Add methods to be used by integration specs here
end





MiniTest::Spec.register_spec_type /AcceptanceTest$/, MiniTest::Rails::Acceptance

#MiniTest::Spec.register_spec_type( /Integration$/, AcceptanceSpec )
