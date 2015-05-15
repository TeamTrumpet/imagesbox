FROM node:0.12
MAINTAINER Wyatt Johnson <wyatt@trumpet.ca>

RUN apt-get update
RUN apt-get install -y wkhtmltopdf
