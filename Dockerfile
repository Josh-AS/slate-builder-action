FROM ruby:2.7-alpine

# COPY test.sh /usr/src/test.sh
# RUN chmod +x /usr/src/test.sh

ENV SLATE_DOCS_PATH=${SLATE_DOCS_PATH:-"/usr/src/docs"}

WORKDIR /usr/src/slate

COPY scripts/*.sh /usr/src/

RUN apk update && \
    apk add git nodejs g++ make bash && \
    git clone https://github.com/Josh-AS/slate.git /usr/src/slate && \
    chmod +x /usr/src/*.sh && \
    bundle install

VOLUME [ "/usr/src/docs" ]
VOLUME [ "/usr/src/build" ]

ENTRYPOINT [ "bash", "/usr/src/prepare.sh" ]
CMD [ "bash", "/usr/src/build.sh" ]