# citizens-advice-style-ruby

Citizens Advice shared Ruby style rubocop settings.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem "citizens-advice-style"
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install citizens-advice-style

## Usage

Create `.rubocop.yml` file with the following configuration:

```
inherit_gem:
  citizens-advice-style:
    - default.yml
```

If you need rubocop-rails styling configuration then also include `default-rails.yml`.

Now run

    $ bundle exec rubocop

Override any global styles in your local `.rubocop.yml` file.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/citizens-advice-style.
