FROM python:3.7-alpine
ARG CLI_VERSION=1.16.126
RUN apk -uv add --no-cache groff jq less && pip install --no-cache-dir awscli==$CLI_VERSION
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD []
