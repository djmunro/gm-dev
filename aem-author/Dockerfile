# Use ubuntu as base image
FROM ubuntu

# Set default directory
WORKDIR /usr/src/app

# Install Oracle's Java 8
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk8-installer

# Copy the license and jar file into the image
COPY aem-author/license.properties .
COPY aem-author/aem-author-p4502.jar cq-quickstart.jar

RUN java -jar cq-quickstart.jar -unpack

# Expose the default port for the publish instance
EXPOSE 4502

# Define the entry command so that this container always start AEM in Author mode
# ENTRYPOINT ["java", "-jar", "cq-quickstart.jar", "-Dsling.run.modes=author", "-p", "4502"]
ENTRYPOINT ["crx-quickstart/bin/quickstart"]

