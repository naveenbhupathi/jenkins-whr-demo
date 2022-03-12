FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y nginx && \
	apt-get install -y docker.io && \
    apt-get clean

EXPOSE 80

RUN docker --version
RUN nginx -V

CMD ["nginx", "-g", "daemon off;"]