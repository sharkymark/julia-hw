# Define the argument before its first use
FROM julia:latest

# get ps utility in the container
RUN apt-get update && apt-get install -y procps curl net-tools htop ssh git

# COPY docker-entrypoint.sh /usr/local/bin/
# ENTRYPOINT ["docker-entrypoint.sh"]
# CMD ["julia"]

## resources
# https://github.com/docker-library/julia
# https://hub.docker.com/_/julia

