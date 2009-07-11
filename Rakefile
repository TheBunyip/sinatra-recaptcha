require 'rubygems'
require 'rake/gempackagetask'
require 'rubygems/specification'
require 'date'
require 'spec/rake/spectask'
 
GEM = 'sinatra-recaptcha'
GEM_NAME = 'sinatra-recaptcha'
GEM_VERSION = '0.0.2'
AUTHORS = ['James Pozdena']
EMAIL = "jpoz@jpoz.net"
HOMEPAGE = "http://github.com/jpoz/sinatra-recaptcha"
SUMMARY = "Simple, easy way to implement recaptcha for Sinatra"
 
spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.summary = SUMMARY
  s.description = s.summary
  s.authors = AUTHORS
  s.email = EMAIL
  s.homepage = HOMEPAGE
  s.require_path = 'lib'
  s.autorequire = GEM
  s.files = %w(README.markdown Rakefile) + Dir.glob("{lib}/**/*")
end
 
task :default => :spec
 
desc "Run specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = %w(-fs --color)
end
 
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end
 
desc "install the gem locally"
task :install => [:package] do
  sh %{sudo gem install pkg/#{GEM}-#{GEM_VERSION}}
end
 
desc "create a gemspec file"
task :make_spec do
  File.open("#{GEM}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end