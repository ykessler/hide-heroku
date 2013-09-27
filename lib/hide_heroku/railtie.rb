require "rails"

module HideHeroku
  class Railtie < ::Rails::Railtie
  
    config.before_configuration do
      Rails.application.config.middleware.use Rack::HideHeroku  
    end
    
    private
    
  end
end