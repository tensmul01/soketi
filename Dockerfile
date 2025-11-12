FROM node:18-alpine

WORKDIR /app
COPY . .

RUN npm install -g pnpm
RUN pnpm install

EXPOSE 6001
CMD ["npx", "soketi", "start"]
