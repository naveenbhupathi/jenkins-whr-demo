FROM nvnbhupathi/ubuntu_dev_tools:latest

RUN apt-get update && \
    apt-get install -y nginx && \
	apt-get install -y supervisor && \
    apt-get clean

COPY /supervisor /src/supervisor

EXPOSE 80

RUN python3.7 --version
RUN nginx -V
RUN nginx -c /etc/nginx/nginx.conf -t

COPY metrics.py /

# CMD ["nginx", "-g", "daemon off", "python3.7;"]
# CMD ["supervisord", "-c", "/src/supervisor/service_script.conf"]
COPY wrapper_script.sh /
RUN chmod +x /wrapper_script.sh
ENTRYPOINT ["./wrapper_script.sh"]
