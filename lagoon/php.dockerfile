ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM uselagoon/php-8.0-fpm:21.9.0

COPY --from=cli /app /app
