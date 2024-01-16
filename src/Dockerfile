# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    coreutils \
    && rm -rf /var/lib/apt/lists/*

# Copy the script into the image
COPY random_process_generator.sh /random_process_generator.sh

# Make the script executable
RUN chmod +x /random_process_generator.sh

# Run the script as the entrypoint
ENTRYPOINT ["/random_process_generator.sh"]
