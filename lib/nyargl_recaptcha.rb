require 'nyargl_recaptcha/engine'

module NyarglRecaptcha
  ActiveSupport.on_load(:action_controller) do
    include NyarglRecaptcha::Concerns::Checker
    helper NyarglRecaptcha::Engine.helpers
  end
end
