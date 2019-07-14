FROM confluent/platform

MAINTAINER vsahu@redhat.com

COPY schema-registry-docker.sh /usr/local/bin/

#TODO Schema Registry needs a log directory.
RUN ["chown", "-R", "confluent:confluent", "/etc/schema-registry/schema-registry.properties"]
RUN ["chmod", "+x", "/usr/local/bin/schema-registry-docker.sh"]

EXPOSE 8081

USER confluent
ENTRYPOINT ["/usr/local/bin/schema-registry-docker.sh"]
