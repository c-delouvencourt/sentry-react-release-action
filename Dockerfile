FROM getsentry/sentry-cli:1.40.0
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]