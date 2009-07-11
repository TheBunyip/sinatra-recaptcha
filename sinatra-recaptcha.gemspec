# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sinatra-recaptcha}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Pozdena"]
  s.autorequire = %q{sinatra-recaptcha}
  s.date = %q{2009-07-09}
  s.description = %q{Simple, easy way to implement recaptcha for Sinatra}
  s.email = %q{jpoz@jpoz.net}
  s.files = ["README.textile", "Rakefile", "lib/sinatra", "lib/sinatra/recaptcha.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jpoz/sinatra-recaptcha}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Simple, easy way to implement recaptcha for Sinatra}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
