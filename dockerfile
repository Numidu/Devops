
#Dockerd=file
From node:20-alpine

#Set working directory
WORKDIR /app

#Copy package files
COPY package*.json ./

#Install dependencies
RUN npm installdocker 

#copy all code
COPY . .

#Expose port
EXPOSE 3000

#Start the application
CMD ["npm", "start"]