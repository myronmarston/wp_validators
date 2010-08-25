# -*- encoding: utf-8 -*-
require File.expand_path("../lib/wp_validators/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "wp_validators"
  s.version     = WpValidators::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Myron Marston']
  s.email       = ['myron.marston@gmail.com']
  s.homepage    = "http://rubygems.org/gems/wp_validators"
  s.summary     = "Some validators used at whitepages.com."
  s.description = "Currently includes a URL validator."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "wp_validators"

  s.add_development_dependency "bundler", ">= 1.0.0.rc.6"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
