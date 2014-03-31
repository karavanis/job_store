JobStore
========

Per-request global storage for Sidekiq

How to install JobStore?
------------------------

Include JobStore in your `Gemfile`.

```ruby
gem 'job_store', git: 'git@github.com:sbosx/job_store.git'
```

Add the middleware to the Sidekiq server middleware.

```ruby
Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add JobStore::Middleware
  end
end
```