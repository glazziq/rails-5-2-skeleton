# Rails 5.2 Skeleton

This is a skeleton Rails 5.2 app used as a base for various sample problems.

# How to Run (local)

- Install [Ruby 2.6](https://www.ruby-lang.org/en/)
- Install [Rails](https://guides.rubyonrails.org/getting_started.html)
- `bundle install`
- `rails db:setup`
- `rails server`
- Open your browser to `http://localhost:3000`

# How to Run (docker/compose)

- `docker-compose run --rm web bundle install`
- `docker-compose run --rm web rails db:setup`
- `docker-compose up`

# Tests

`rspec`
