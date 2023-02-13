# citizens-advice-style-ruby

Citizens Advice shared Ruby/Rails style rubocop settings.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem "citizens-advice-style"
end
```

And then run

    $ bundle

Or install it yourself as

    $ gem install citizens-advice-style

## Usage

Create `.rubocop.yml` file with the following configuration:

```
inherit_gem:
  citizens-advice-style:
    - default.yml # For Citizens Advice ruby styles
    - default-rails.yml # For Citizens Advice rails styles
```

Now run

    $ bundle exec rubocop

Override any styles you want in your local `.rubocop.yml` file.

## Contributing

Bug reports and pull requests are welcome on
[GitHub](https://github.com/citizensadvice/citizens-advice-style-ruby)

## Releasing

1. Run `bundle exec rubocop` locally, to validate structure of yml files.
2. Update `lib/citizens-advice/style/version.rb` with appropriate new version number
3. Create release branch and push changes up to github
4. After review & merge, tag the version on github so people can reference it as a new package
