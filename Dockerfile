FROM ruby:2.7-alpine

COPY test.sh /usr/src/test.sh

ENTRYPOINT [ "test.sh" ]