$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'nyargl_recaptcha/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'nyargl_recaptcha'
  s.version     = NyarglRecaptcha::VERSION
  s.authors     = %w(evg2108)
  s.email       = %w(evg2108@yandex.ru)
  s.homepage    = 'https://github.com/evg2108'
  s.summary     = 'NyarglRecaptcha is a simple gem for integration Google reCAPTCHA v2.0 to your projects'
  s.description = 'NyarglRecaptcha is a simple gem for integration Google reCAPTCHA v2.0 to your projects'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'README.md']
  # s.test_files = Dir["test/**/*"]

  s.add_dependency 'activesupport'
  s.add_dependency 'actionview'
  s.add_dependency 'railties'
end
