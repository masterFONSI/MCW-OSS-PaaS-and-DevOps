FROM node:12.18-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["/Hands-on lab/lab-files/package.json", "/Hands-on lab/lab-files/package-lock.json*", "/Hands-on lab/lab-files/npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
