# Add keys into Alpine/git container
# This is done by mounting the volume where the ssh keys reside and settting the correct permissisons in the image

# Use the git alpine implemenation
FROM alpine/git as GitClone

# get the git url and clone code into the image
ARG giturl
RUN mkdir -p /app/workspace
RUN echo cloning repository ${giturl}
RUN git clone -v ${giturl} /app/workspace

# Prepare to execute maven at runtime.
# Copy the code into the Maven image
FROM maven
COPY --from=GitClone /app/workspace /app/workspace
COPY settings.xml /app/workspace/.m2/settings.xml
WORKDIR /app/workspace/helloworld/
