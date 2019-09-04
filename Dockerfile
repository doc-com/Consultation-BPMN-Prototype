FROM camunda/camunda-bpm-platform

USER root
ADD web.xml /camunda/webapps/engine-rest/WEB-INF
ADD server.xml /camunda/conf

RUN chown camunda:camunda conf/server.xml
RUN chmod 664 conf/server.xml

RUN ls -l /camunda/conf

WORKDIR /camunda

EXPOSE 8080 8000

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["./camunda.sh"]