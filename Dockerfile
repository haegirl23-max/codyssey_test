FROM nginx:alpine
LABEL org.opencontainers.image.title="Hyejin's web"
ENV APP_ENV=dev
COPY app/ /usr/share/nginx/html
HEALTHCHECK CMD wget -q -O /dev/null http://localhost/ || exit 1
EXPOSE 80