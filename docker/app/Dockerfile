FROM ruby:3.2.2-alpine as base

RUN apk update && apk add bash build-base nodejs postgresql-dev tzdata

ENV RAILS_ROOT /var/www/cgtrader
RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT

# Setting env up
ENV RAILS_ENV='development'
ENV RACK_ENV='development'
# ENV WEB_CONCURRENCY=2

FROM base as build
# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle config set force_ruby_platform true
RUN bundle install --jobs 20 --retry 5 --without development test

FROM build
# Adding project files
COPY . .
COPY bin/docker/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "s", "-b", "0.0.0.0"]