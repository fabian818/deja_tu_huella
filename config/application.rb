require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)

module DejaTuHuella
    class Application < Rails::Application
        config.active_record.raise_in_transactional_callbacks = true
        config.middleware.use Rack::Cors do
            allow do
                origins '*'
                resource '*',
                :headers => :any,
                :methods => [:get, :post, :put, :delete, :options]
            end
        end
    end
end
