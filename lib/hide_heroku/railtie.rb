require "rails"

module HideHeroku
  class Railtie < ::Rails::Railtie
  
    config.before_configuration do

      config.middleware.use Rack::HideHeroku
        
    end

    rake_tasks do
    end
    
    private
    
  end
end