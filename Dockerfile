FROM node:15.1

# The application inside Docker container by default is accepting network traffic on http://127.0.0.1:3000.
# This interface does not accept external traffic so no wonder that it does not work.
# In order to make it work we need to set HOST environmental variable for nuxt app to 0.0.0.0 (all ip addresses).
# https://stackoverflow.com/questions/43746782/running-nuxt-js-application-in-docker
ENV HOST 0.0.0.0


# RUN apt-get update -y --fix-missing

WORKDIR /usr/src/aurora

COPY ./package*.json ./

RUN npm install

# EXPOSE 4000

# CMD ["npm", "run", "server"]