FROM ubuntu:latest
MAINTAINER thejordanprice@gmx.com

# Upgrade repos and download required prerequisits
RUN apt-get update && apt-get -y install cron jq curl git

# Clone the github repository
RUN git clone https://github.com/thejordanprice/hitronReboot /etc/hitronReboot

# Set the script to be an executable
RUN chmod +x /etc/hitronReboot/hitronReboot.sh

# Add crontab file in the cron directory
ADD crontab /etc/cron.d/hitronreboot

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/hitronreboot

# Apply cron job
RUN crontab /etc/cron.d/hitronreboot

# Create the log file incase needed
RUN touch /var/log/cron.log

# Print the environment variables with MODEM to file
RUN printenv | sed 's/^\(.*\)$/export \1/g' > /root/env.sh

# Run the command on container startup
CMD ["cron", "-f"]
