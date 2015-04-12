module NyarglRecaptcha
  module ApplicationHelper
    def include_recaptcha_scripts(selector = '.g-recaptcha')
      output = ActiveSupport::SafeBuffer.new
      output << render(partial: 'nyargl_recaptcha/shared/callback.js', locals: { sitekey: ENV['RECAPTCHA_SITEKEY'], selector: selector })
      output << javascript_include_tag('https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit')
    end
  end
end
