JobStore
========

Per-job global storage for Sidekiq

Do you ever wanted a global storage which is going to have always a clear state when a new job is picked up by the workers. Then JobStore is the gem you are looking for!

How to install JobStore?
------------------------

Include JobStore in your `Gemfile`.

```ruby
gem 'job_store'
```

Incude the middleware as a part of the Sidekiq server.

```ruby
Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add JobStore::Middleware
  end
end
```