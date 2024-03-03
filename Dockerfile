# Define the argument before its first use
FROM julia:latest

# get ps utility in the container
RUN apt-get update && apt-get install -y procps curl net-tools htop ssh git

# ENV PROJECT_DIR /workspaces/julia-hw
# WORKDIR $PROJECT_DIR 

# Install Python and pip
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    python3-dev \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install packages Jupyter and Pandas
RUN pip3 install --no-cache-dir --break-system-packages jupyter pandas

# COPY docker-entrypoint.sh /usr/local/bin/
# ENTRYPOINT ["docker-entrypoint.sh"]
# CMD ["julia"]

## resources
# https://github.com/docker-library/julia
# https://hub.docker.com/_/julia
# https://containers.dev/implementors/json_reference/

# after container starts and in julia REPL, run the following to use the julia kernel in jupyerlab
# using Pkg
# Pkg.add("IJulia")

