# frozen_string_literal: true

require 'rake/testtask'
require 'rubocop/rake_task'

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['src/**/*.rb', 'test/**/*.rb']
end

Rake::TestTask.new :test do |task|
  task.libs = %w[lib test]
  task.pattern = 'test/*_test.rb'
end

Rake::TestTask.new :bench do |task|
  task.libs = %w[lib test]
  task.pattern = 'test/benchmarks/*_benchmark.rb'
end

task default: :test
