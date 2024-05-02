FROM ubuntu:latest

# Install cron
RUN apt-get update && apt-get -y install cron curl

# Copy cron job file into the cron directory
COPY cronfile /etc/crontab

# Copy start script
COPY start-cron.sh /usr/local/bin/start-cron.sh


# Run the script to start cron and output logs
CMD ["/usr/local/bin/start-cron.sh"]
