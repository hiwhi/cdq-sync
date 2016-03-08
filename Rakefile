$:.unshift("/Library/RubyMotion/lib")

platform = ENV.fetch('platform', 'ios')
require "motion/project/template/#{platform}"

require 'bundler'
require 'bundler/gem_tasks'

if ARGV.join(' ') =~ /spec/
  Bundler.require :default, :spec
else
  Bundler.require
end

require 'jdq'
require 'motion-stump'
require 'cdq'
require 'afmotion'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'JDQ'
end
