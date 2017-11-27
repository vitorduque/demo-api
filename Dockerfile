FROM ruby:2.4.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .

ENV RAILS_ENV=development

EXPOSE 3000

ENTRYPOINT if [ "$RAILS_ENV" = "production" ]; then rake db:migrate && rails s -b 0.0.0.0; else rails s -b 0.0.0.0; fi
