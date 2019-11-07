ARG RUBY_VERSION=2.5.7
FROM ruby:${RUBY_VERSION}-alpine

RUN apk add --update build-base git

LABEL "repository"="https://github.com/vdemonchy/rubocop-linter-action"
LABEL "maintainer"="Victor Demonchy <demonchy.v@gmail.com>"
LABEL "version"="1.0.3"

COPY lib /action/lib
COPY README.md LICENSE /

ENTRYPOINT ["/action/lib/entrypoint.sh"]
