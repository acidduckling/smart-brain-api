FROM node:8.11.3-alpine
LABEL maintainer="Clayton Wakefield"

# Add Yarn through Alpine Linux's package manager
RUN apk update
RUN apk add yarn
# NodeMon must be installed globally to be executable
RUN yarn global add nodemon

VOLUME [ "/usr/local/share/.cache/yarn/v1/" ]

WORKDIR /usr/src/app
COPY ./package.json yarn.lock ./
RUN yarn

COPY . ./

ENTRYPOINT [ "yarn", "start" ]