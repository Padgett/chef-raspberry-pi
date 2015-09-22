require 'rubocop/rake_task'
require 'foodcritic'
require 'rspec/core/rake_task'

task default: ['style']

# Style tests. Rubocop and Foodcritic
namespace :style do
  desc 'Run Ruby style checks'
  RuboCop::RakeTask.new(:ruby)

  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef)
end

desc 'Run all style checks'
task style: ['style:ruby', 'style:chef']

# Rspec and ChefSpec
desc 'Run ChefSpec examples'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.verbose = false
end

desc 'Find notes in code'
task :notes do
  puts `egrep --exclude=Rakefile --exclude=*.log -n -r -i '(TODO|FIXME|OPTIMIZE)' .`
end
