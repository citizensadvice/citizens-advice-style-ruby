# citizens-advice-style-ruby

Citizens Advice shared Ruby style rubocop settings.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem "citizens-advice-style"
end
```

If you need rubocop-rails styling configuration then also add rubocop-rails gem (TODO: Can we include this in citizens-advice-style?).

```ruby
group :test, :development do
  gem "citizens-advice-style"
  gem "rubocop-rails", require: false
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

If you need rubocop-rails styling configuration then also include `default-rails.yml` after `default.yml`.

Now run

    $ bundle exec rubocop

Override any global styles in your local `.rubocop.yml` file.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/citizensadvice/citizens-advice-style-ruby.

## Releasing

1. Make changes and test locally
2. Update `lib/citizens-advice/style/version.rb` with appropriate new version number
3. Build gem `rake build`
4. Create a tag `git tag -a v0.1.0`
5. Push changes to github `git push --tags`
6. Push gem to rubygems `gem push citizens-advice-style-0.1.0.gem`
