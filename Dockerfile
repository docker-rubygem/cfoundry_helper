FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.0

RUN gem install cfoundry_helper --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["add_users_to_org"]
CMD ["--help"]
