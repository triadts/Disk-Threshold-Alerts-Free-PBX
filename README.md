# Disk-Threshold-Alerts-Free-PBX
## Steps
  1. After logging into the instance as root download your "Master" 
  2. Change the "from" name to be the company intials and with PBX at the end. ex: TTSPBX
  3. Make sure the email spam filter includes your domain name ex. TTSPBX@ip-xxx-xxx-xxx-xxx.ec2.internal you can get your host name by typing hostname as a command
  4. White list the this email in Zendesk

## Cron Jobs
  1. Sign into instance as root
  2. Enter the command crontab -e
  3.30 0-23 1-31 * * /root.

### Submit Changes
Pleas submit any recommended changes through Github
