$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'sidekiq_send_to_worker/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'sidekiq_send_to_worker'
  s.version     = SidekiqSendToWorker::VERSION
  s.authors     = ['Muhammet']
  s.email       = ['dilekmuhammet@gmail.com']
  s.homepage    = 'https://github.com/movielala/sidekiq_send_to_worker'
  s.summary     = 'Enqueue job from another projects'
  s.description = 'Enqueue job from another projects'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '> 4.0'
  s.add_dependency 'sidekiq', '~> 4'
end
