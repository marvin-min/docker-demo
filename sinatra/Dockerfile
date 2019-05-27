FROM ruby:latest
ENV REFRESHED_AT 2019-05-26
RUN apt-get update -yqq && apt-get -yqq install redis-tools
RUN gem install sinatra json redis
RUN mkdir -p /opt/webapp
EXPOSE 4567
CMD ["ruby", "/opt/webapp/app.rb"]
