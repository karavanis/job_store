require 'fakeredis/rspec'
require 'sidekiq'

require 'job_store'

redis = { url: "redis://localhost:6379" }

Sidekiq.configure_client { |config| config.redis = redis }
Sidekiq.configure_server { |config| config.redis = redis }