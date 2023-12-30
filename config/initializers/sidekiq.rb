# frozen_string_literal: true

sidekiq_config = { url: REDIS_URL }

Sidekiq.configure_server do |config|
  config.redis = sidekiq_config
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_config
end

Sidekiq::Extensions.enable_delay!
