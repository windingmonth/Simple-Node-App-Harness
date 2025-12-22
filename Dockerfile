FROM node:14-alpine AS development
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .
RUN npm install
# Copy app files
COPY . .
# Expose port
EXPOSE 3002
# Start the app
CMD [ "node", "app.js" ]
