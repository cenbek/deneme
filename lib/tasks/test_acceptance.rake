namespace :test do
  Rake::TestTask.new(:acceptance => "test:prepare") do |t|
    t.libs << "test"
    t.pattern = 'test/acceptance/**/*_test.rb'
  end
end
