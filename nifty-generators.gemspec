Gem::Specification.new do |s|
  s.name        = "flockonus-nifty-generators"
  s.version     = "0.0.7"
  s.author      = "Fabiano PS"
  s.email       = "fabianosoriani@gmail.com"
  s.homepage    = "http://github.com/flockonus/nifty-generators"
  s.summary     = "A collection of useful Rails generator scripts. Forked from ryanb"
  s.description = "A collection of useful Rails generator scripts for scaffolding, layout files, authentication, and more."

  s.files        = Dir["{lib,test,features,rails_generators}/**/*", "[A-Z]*"]
  s.require_path = "lib"

  #s.add_development_dependency 'rspec-rails', '~> 2.0.1'
  #s.add_development_dependency 'cucumber', '~> 0.10.0'
  s.add_development_dependency 'rails', '> 3.0.0'
  #s.add_development_dependency 'mocha', '~> 0.9.8'
  s.add_development_dependency 'bcrypt-ruby', '~> 2.1.2'
  s.add_development_dependency 'sqlite3-ruby', '~> 1.3.1'

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end
