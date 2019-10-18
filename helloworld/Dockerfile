# Clone code from git based on a url argument parameter
FROM alpine/git as clone
# Get the ssh keys from local user running the container
RUN mkdir -p /root/.ssh
ADD .ssh/id_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa

# Do the clone
ARG url 
WORKDIR /app
RUN git clone ${url}

