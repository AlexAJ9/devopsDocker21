FROM alpine as build-stage
WORKDIR /usr/src/app
COPY /example-frontend .
RUN apk add --update nodejs npm && \  
npm install && npm run build 

FROM nginx:1.19-alpine 
COPY --from=build-stage  /usr/src/app/build /usr/share/nginx/html
