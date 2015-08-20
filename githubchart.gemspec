$:.unshift File.expand_path('../lib/', __FILE__)
require 'githubchart/version'

Gem::Specification.new do |s|
  s.name        = 'githubchart'
  s.version     = GithubChart::VERSION
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.summary     = 'Generate an SVG of Github contributions data'
  s.description = "Uses GithubStats to grab Github contributions scores and converts that into an SVG"
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/githubchart'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split
  s.executables = ['githubchart']

  s.add_runtime_dependency 'githubstats', '~> 1.1.0'
  s.add_runtime_dependency 'svgplot', '~> 0.2.0'

  s.add_development_dependency 'rubocop', '~> 0.33.0'
  s.add_development_dependency 'rake', '~> 10.4.0'
  s.add_development_dependency 'coveralls', '~> 0.8.0'
  s.add_development_dependency 'rspec', '~> 3.3.0'
  s.add_development_dependency 'fuubar', '~> 2.0.0'
end

