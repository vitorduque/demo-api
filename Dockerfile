FROM ruby:2.4.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .

# RUN bin/rake db:create
# RUN bin/rake db:migrate
# RUN bin/rake db:seed

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
