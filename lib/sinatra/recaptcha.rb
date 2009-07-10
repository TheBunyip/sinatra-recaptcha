require 'net/http'

module Sinatra
  module ReCaptcha
    VERSION = "0.0.1"
    
    @server = 'http://api.recaptcha.net'
    @verify = 'http://api-verify.recaptcha.net'
    
    class << self
      attr_accessor :public_key, :private_key, :server
      attr_reader   :verify
    end

    def captcha_pass?
      session = params[:captcha_session].to_i
      answer  = params[:captcha_answer].gsub(/\W/, '')
      open("http://captchator.com/captcha/check_answer/#{session}/#{answer}").read.to_i.nonzero? rescue false
    end
    
    def recaptcha
      "<div id='dynamic_recaptcha'>
        <script type='text/javascript' src='#{Sinatra::ReCaptcha.server}/js/recaptcha_ajax.js'></script>
        <script type='text/javascript' >
          Recaptcha.create('#{Sinatra::ReCaptcha.public_key}', document.getElementById('dynamic_recaptcha') );
        </script>
      </div>"
    end

    def recaptcha_correct?
      recaptcha = Net::HTTP.post_form URI.parse("#{Sinatra::ReCaptcha.verify}/verify"), {
        :privatekey => Sinatra::ReCaptcha.private_key,
        :remoteip   => request.ip,
        :challenge  => params[:recaptcha_challenge_field],
        :response   => params[:recaptcha_response_field]
      }
      answer, error = recaptcha.body.split.map { |s| s.chomp }
      unless answer == 'true'
        return false
      else
        return true
      end
    end
  end

  helpers ReCaptcha
end
