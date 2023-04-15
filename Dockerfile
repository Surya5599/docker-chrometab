FROM node: 18.7.0
WORKDIR /code
COPY package. json package. json
COPY package-lock. json package-lock. json
RUN pm install
COPY
CMD [ "node", "server. js" ]
