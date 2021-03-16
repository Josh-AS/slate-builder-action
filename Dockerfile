FROM ruby:2.7-alpine

COPY test.sh /usr/src/test.sh

RUN chmod +x /usr/src/test.sh

ENTRYPOINT [ "sh", "/usr/src/test.sh" ]