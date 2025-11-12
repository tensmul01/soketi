FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN npm install -g pnpm
RUN pnpm install

# Expose port untuk soketi
EXPOSE 6001

# Jalankan soketi
CMD ["npx", "soketi", "start"]
