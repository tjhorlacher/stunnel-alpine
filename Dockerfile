FROM alpine:edge
MAINTAINER TJ Horlacher <tjhorlacher@me.com>

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE\
      org.label-schema.vcs-url="https://github.com/tjhorlacher/stunnel-alpine.git"\
      org.label-schema.vcs-ref=$VCS_REF\
      org.label-schema.name="Stunnel Alpine:edge Image"\
      org.label-schema.usage="https://github.com/tjhorlacher/stunnel-alpine"\
      org.label-schema.schema-version="1.0.0"

RUN apk upgrade --update-cache --available && \
    apk add stunnel

ENTRYPOINT ["/usr/bin/stunnel"]
CMD ["/etc/stunnel/stunnel.conf"]
