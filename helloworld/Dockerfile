# Add keys into Alpine/git container
# This is done by mounting the volume where the ssh keys reside and settting the correct permissisons in the image

# Use the git alpine implemenation
FROM alpine/git

# set permissisons of the ssh keys by running a script
# Get the docker script from local disk
COPY docker-entrypoint.sh /bin/docker-entrypoint.sh

# set the script to executable
RUN chmod +x /bin/docker-entrypoint.sh

# set the entrypoint to run the script
ENTRYPOINT ["/bin/docker-entrypoint.sh"]

FROM maven
# get the git url
ARG giturl

RUN mkdir -p /app/workspace
RUN echo ${giturl}
RUN git clone ${giturl} /app/workspace
RUN ls -lRs /app/workspace
RUN cat /app/workspace/buildsystem/helloworld/pom.xml
# RUN mvn -X clean -f /app/workspace/buildsystem/helloworld/pom.xml
