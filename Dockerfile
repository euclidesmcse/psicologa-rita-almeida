FROM nginx:alpine
LABEL org.opencontainers.image.title="psicologa-rita-almeida"
LABEL org.opencontainers.image.description="Landing page Dra. Rita Almeida — Psicóloga Clínica"
COPY index.html /usr/share/nginx/html/index.html
COPY privacidade.html /usr/share/nginx/html/privacidade.html
COPY 404.html /usr/share/nginx/html/404.html
COPY robots.txt sitemap.xml site.webmanifest /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q --spider http://127.0.0.1/ || exit 1
CMD ["nginx", "-g", "daemon off;"]
