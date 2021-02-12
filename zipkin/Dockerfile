FROM openzipkin/zipkin:2.23
# Embed zipkin dependencies, a spark job to compute the graph between microservices
ENV ZIPKIN_DEPENDENCIES_VERSION=2.6.3 \
    STORAGE_TYPE=elasticsearch \
    ES_INDEX=traces

# RUN curl -SL https://maven.aliyun.com/repository/central/io/zipkin/dependencies/zipkin-dependencies/$ZIPKIN_DEPENDENCIES_VERSION/zipkin-dependencies-$ZIPKIN_DEPENDENCIES_VERSION.jar > zipkin-dependencies.jar

# Copy CRON files
COPY periodic/ /etc/periodic/
COPY zipkin-dependencies.jar zipkin-dependencies.jar
# To run the dependency job once, run: ./run-job.sh from inside the container
# `docker-compose exec zipkin ./run-job.sh`
COPY run-job.sh .

CMD crond -b && java ${JAVA_OPTS} -cp . org.springframework.boot.loader.JarLauncher
