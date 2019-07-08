FROM camunda/camunda-bpm-platform

ADD web.xml /camunda/webapps/engine-rest/WEB-INF

WORKDIR /camunda

USER camunda

EXPOSE 8080 8000

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["./camunda.sh"]