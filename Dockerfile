FROM ruby:2.7

ENV SLATE_DOCS_PATH=${SLATE_DOCS_PATH:-"/usr/src/docs"}

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install git nodejs -y
RUN git clone https://github.com/Josh-AS/slate.git /usr/src/app
RUN bundle install

COPY *.sh /usr/src/
RUN chmod +x /usr/src/*.sh

VOLUME [ "/usr/src/docs" ]

ENTRYPOINT [ "sh",  "/usr/src/slate-build.sh" ]