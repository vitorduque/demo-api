FROM ruby:2.4.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .

ENV ENVIRONMENT=development

EXPOSE 3000

ENTRYPOINT rails s -e $ENVIRONMENT -b 0.0.0.0
