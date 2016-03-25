Drails::Application.configure do
  
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # config.assets.precompile += %w( site_externo.js )
  # config.assets.precompile += %w( site_externo.css )

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
  config.secret_key_base = '124705290d5c2f841980ac195f74f9d2a82df579567ef3f25590e519f9d4b77a1674e12261ca2db2e810d7aa2d59369800fa93bb02d7789cdef17497844cfb98'

  Rails.application.routes.default_url_options[:host] = 'localhost:3000'


end
