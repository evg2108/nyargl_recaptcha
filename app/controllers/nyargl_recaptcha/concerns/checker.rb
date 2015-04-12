module NyarglRecaptcha
  module Concerns
    module Checker
      extend ActiveSupport::Concern

      def verify_recaptcha
        response = Net::HTTP.post_form(URI('https://www.google.com/recaptcha/api/siteverify'),
                                       { secret: ENV['RECAPTCHA_PRIVATE_KEY'],
                                         response: params['g-recaptcha-response'],
                                         remoteip: request.remote_ip })
        JSON.parse(response.body)['success']
      end
    end
  end
end