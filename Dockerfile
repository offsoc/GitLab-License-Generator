FROM ruby:bookworm
WORKDIR /license-generator
COPY ./ ./
RUN <<EOF
gem install gitlab-license
EOF
VOLUME /license-generator/build
ENV LICENSE_NAME="Offensive Security"
ENV LICENSE_COMPANY="OffSec Computer, Inc."
ENV LICENSE_EMAIL="apt27@offsec.com"
ENV LICENSE_PLAN="ultimate"
ENV LICENSE_USER_COUNT="2147483647"
ENV LICENSE_EXPIRE_YEAR="2050"

CMD [ "./make.sh" ]