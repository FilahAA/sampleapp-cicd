FROM alpine:3.14

RUN apk add --update --no-cache python3 nginx && ln -sf python3 /usr/bin/python

RUN python3 -m ensurepip

RUN pip3 install --no-cache --upgrade pip setuptools

ENV nginx_vhost=/etc/nginx/conf.d/default.conf nginx_conf=/etc/nginx/nginx.conf

COPY ./nginx/default ${nginx_vhost}

COPY ./nginx/nginx.conf ${nginx_conf}

COPY ./app /opt/app

COPY ./start.sh /start.sh

RUN pip install -r /opt/app/requirements.txt

EXPOSE 80 443

RUN chmod +x /start.sh

CMD ["./start.sh"]


