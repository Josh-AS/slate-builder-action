FROM ruby:2.7-alpine

ENV SLATE_DOCS_PATH=${SLATE_DOCS_PATH:-"/usr/src/docs"}

WORKDIR /usr/src/app

RUN apk update
RUN apk add git nodejs make g++
RUN git clone https://github.com/Josh-AS/slate.git /usr/src/app
RUN bundle install

COPY *.sh /usr/src/
RUN chmod +x /usr/src/*.sh

VOLUME [ "/usr/src/docs" ]

ENTRYPOINT [ "sh",  "/usr/src/slate-build.sh" ]