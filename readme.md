# hitronReboot for docker
This is a template to get [hitronReboot](https://github.com/thejordanprice/hitronReboot) running in a docker container very quickly; which is a bash script that I have created to reboot my modem on a schedule. You can read more about why I did it in the readme of the other project. I also wanted the script to have logs and run from my unraid box; it is on 24/7. The cronjob is to run at 3:45am every morning to execute the script.
### Setup
You will need to either fill out the username, password, and modem address as environment variables with docker's -e flag or manually. The environment variables can be as follows.
```
MODEM_ADDY="192.168.100.1"
MODEM_USER="cusadmin"
MODEM_PASS="changeme"
```
### Helpful Commands
```
docker build --rm --no-cache -t thejordanprice/hitronreboot .
docker start thejordanprice/hitronreboot
docker exec -it [container id] /bin/bash
docker stop [container id]
docker rm [container id]
```
I will write better documentation soon...
This is planned to be used with an [unRaid template](https://github.com/thejordanprice/unRaid-templates) OR some linux flavor.
### License
MIT
