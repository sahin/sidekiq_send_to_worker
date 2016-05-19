# Sidekiq Send To Worker

This gem provides enqueue jobs from another projects

## Installing

```ruby
gem 'sidekiq_runner'
gem 'sidekiq_send_to_worker'
```

### Example
```ruby
# Your worker
class UrlShortenerWorker
  include Sidekiq::Worker
  
  sidekiq_options backtrace: true, queue: 'url_shortener', retry: 2
 
  include SidekiqRunner::SidekiqPerform

  def create_from_google(params)
    # id = params[:id]
    # Video.find(id)
    # Do something here
  end
  
  def create_from_bitly(params)
    # id = params[:id]
    # Video.find(id)
    # Do something here
  end
  
  def my_other_method
    # Do something here
  end
end
```


Send Job To Workers

```ruby
SidekiqSendToWorker::Sender.perform_async('UrlShortenerWorker', 'create_from_google', {a:1, b:2} )
```

## Running Tests

    $ bundle install
    $ bundle exec rake test

If you need to test against local gems, use Bundler's gem :path option in the Gemfile and also edit `test/support/test_helper.rb` and tell the tests where the gem is checked out.

## Code Status

* [![Travis CI]()]()
* [![Gem Version]()]()
* [![Dependencies]()]()
