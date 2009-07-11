# Quick, simple, easy way to implement REcaptcha for Sinatra apps

## Installation
  gem sources -a http://gems.github.com
  
  sudo gem install jpoz-sinatra-captcha

<pre><code>
require 'rubygems'
require 'sinatra'
require 'sinatra/recaptcha'

configure do
   # https://admin.recaptcha.net/accounts/signup/
   Sinatra::ReCaptcha.public_key  = 'your_public_key'
   Sinatra::ReCaptcha.private_key = 'your_private_key'
   # to use ssl set Sinatra::ReCaptcha.server = 'https://api-secure.recaptcha.net'
end


get '/' do
  haml :recaptcha
end

post '/' do
  halt(401, "invalid captcha") unless captcha_correct?
  "passed!"
end

__END__

@@ captcha

%h1 Try ReCaptcha
%form{:method=>"post", :action=>"/post"}
  = recaptcha
  # you can also use recaptcha(:ajax) to use a pure ajax version
  %input{:type=>'submit', :value => 'Send'}
</code></pre>
