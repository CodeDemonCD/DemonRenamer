FROM python:3.10.6

# Create directory for the bot
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot

# Set environment variable to prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt -qq update && \
    apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo neofetch fontconfig && \
    rm -rf /var/lib/apt/lists/*

# Copy application files
COPY . .

# Install Python dependencies
RUN pip3 install -r requirements.txt

# Set the default command to run the script with argument
CMD ["bash", "run.sh", "install", "latest", "ffmpeg"]
