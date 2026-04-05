FROM node:alpine
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build
EXPOSE 4000
VOLUME /app/ssl
CMD ["node", "."]
