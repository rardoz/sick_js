begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

#APP_RAKEFILE = File.expand_path('../test/dummy/Rakefile', __FILE__)

#require 'geminabox-release'
#GeminaboxRelease.patch host: 'http://gems.corp.avvo.com'
# Remove the standard rubygems tasks
#['build', 'install', 'release'].each { |task| Rake::Task[task].clear }

require 'rake/testtask'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/*_test.rb'
  t.verbose = false
end

task default: :test
require 'jasmine'
load 'jasmine/tasks/jasmine.rake'
