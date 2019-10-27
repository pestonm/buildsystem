# Add keys into Alpine/git container
# This is done by mounting the volume where the ssh keys reside and settting the correct permissisons in the image

# Use the git alpine implemenation
FROM alpine/git as GitClone

# set permissisons of the ssh keys by running a script
# Get the docker script from local disk
# COPY docker-entrypoint.sh /bin/docker-entrypoint.sh

# set the script to executable
# RUN chmod +x /bin/docker-entrypoint.sh

# set the entrypoint to run the script
# ENTRYPOINT ["/bin/docker-entrypoint.sh"]

# get the git url and clone code into the image
ARG giturl
RUN mkdir -p /app/workspace
RUN echo cloning repository ${giturl}
RUN git clone ${giturl} /app/workspace
# RUN ls -lRs /app/workspace


# Prepare to execute maven at runtime. 
FROM maven
COPY --from=GitClone /app/workspace /app/workspace
WORKDIR /app/workspace/helloworld/
RUN ls -lRs
RUN mvn clean install
