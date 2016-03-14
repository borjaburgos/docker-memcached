############################################################
# Dockerfile to run Memcached Containers
# Based on Ubuntu Image
# Based on Digital Ocean Post 
# https://www.digitalocean.com/community/articles/docker-explained-how-to-create-docker-containers-running-memcached
############################################################

# Set the base image to use to Ubuntu
FROM ubuntu

# Set the file maintainer (your name - the file's author)
MAINTAINER Borja Burgos <borja@tutum.co>

# Install Memcached
RUN apt-get update && apt-get install -y memcached

# Port to expose (default: 11211)
EXPOSE 11211

# Default Memcached run command arguments
# Change to limit memory when creating container in Tutum 
CMD ["-m", "64"]

# Set the user to run Memcached daemon
USER daemon

# Set the entrypoint to memcached binary
ENTRYPOINT memcached
