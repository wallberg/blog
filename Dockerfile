FROM jekyll/jekyll:4.2.0

COPY Gemfile /srv/jekyll
COPY Gemfile.lock /srv/jekyll

RUN bundle install --verbose && echo $?
