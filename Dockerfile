FROM node:18-alpine

ENV NODE_ENV production
ENV HOST 0.0.0.0
ENV PORT 3000

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# Install app dependencies
RUN yarn --production --silent && mv node_modules ../

EXPOSE 3000

CMD [ "./bin/www" ]