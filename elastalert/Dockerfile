FROM ivankrizsan/elastalert:0.1.18

COPY config /opt/config/
COPY rules /opt/rules/
COPY ./docker-entrypoint.sh /opt/
RUN chmod +x /opt/docker-entrypoint.sh
RUN ls -ld /opt/docker-entrypoint.sh
CMD [ "/opt/docker-entrypoint.sh" ]
