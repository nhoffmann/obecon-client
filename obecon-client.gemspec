# frozen_string_literal: true

lib = File.expand_path("../lib/", __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)
require "obecon/version"

Gem::Specification.new do |spec|
  spec.name        = "obecon-client"
  spec.version     = Obecon::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ["Niels Hoffmann"]
  spec.email       = ["niels@askhelmut.com"]
  spec.homepage    = "https://askhelmut.com"
  spec.summary     = "A wrapper for the Oberbaum Concept asset server."
  spec.description = "Simple wrapper to receive assets from oberbaum-concept asset servers."
  spec.license     = "MIT"

  spec.required_rubygems_version = ">= 1.3.5"

  spec.add_dependency("hashie", "~> 2.0")
  spec.add_dependency("httparty", "~> 0.12")

  spec.files        = Dir.glob("lib/**/*") + %w[README.md]
  spec.require_path = "lib"
end
