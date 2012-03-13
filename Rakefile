require 'rubygems'
require 'rubygems/package_task'

task :default => [:gem]

spec = eval(File.read('hyde.gemspec'))

Gem::PackageTask.new(spec) do |pkg|

end
