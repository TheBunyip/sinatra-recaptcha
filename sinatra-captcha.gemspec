Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.name = 'sinatra-recaptcha'
  s.version = '0.0.1'
  s.date = '2009-07-09'

  s.description = "Simple, easy way to implement recaptcha for Sinatra"
  s.summary = "Simple, easy way to implement recaptcha for Sinatra"

  s.authors = ["Blake Mizerany", "James Pozdena"]

  # = MANIFEST =
  s.files = %w[
    README.markdown
    lib/sinatra/recaptcha.rb
  ]
  # = MANIFEST =

  s.has_rdoc = false
  s.require_paths = %w[lib]
  s.rubygems_version = %q{1.3.1}
end
