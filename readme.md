# hitronReboot for docker

This is a template to get hitronReboot running in a docker container very quickly.

Cronjob runs at 3:45am everyday to run the script.

Password needs filled out inside the Dockerfile.

To use the Dockerfile...

docker build --rm --no-cache -t thejordanprice/hitronreboot .
docker start thejordanprice/hitronreboot
docker exec -it [container id] /bin/bash
docker stop [container id]
docker rm [container id]

I will write better documentation soon.

This is planned to be used with an unRaid template (not written yet) OR some linux flavor.