   # Use the Node.js 16 image as the base (Linux with Node pre-installed)
   FROM node:16

   # Set the working directory inside the container
   WORKDIR /app

   # Copy package files first so dependency installs can be cached
   COPY package*.json ./

   # Install the app's dependencies
   RUN npm install

   # Copy the rest of the application files into the container
   COPY . .

   # Document that the app listens on port 3000
   EXPOSE 3000

   # Start the application when the container runs
   CMD ["npm", "start"]