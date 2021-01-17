# code would not change in production
# install all the dependencies and run the build application
# build assets would be saved at /usr/app/build
FROM node:alpine
WORKDIR '/usr/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build 


# starting the second phase for NGINX and terminating the first step
FROM nginx
COPY --from=0 /usr/app/build /usr/share/nginx/html