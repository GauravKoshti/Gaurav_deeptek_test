#install docker on ubuntu
 sudo apt-get update
 sudo apt install docker.io
 docker --version
 systemctl status docker
 systemctl start docker
 systemctl status docker
 docker images
 docker ps -a
 docker ps

#install docker compose on ubuntu
 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m      )" -o /usr/local/bin/docker-compose
 sudo chmod +x /usr/local/bin/docker-compose
 docker-compose --version

# Pull the docker images on ubuntu
  docker pull sandipholambe/csvserver:latest
  docker pull prom/prometheus:v2.22.0

#Part 1 Solution
#question 1st Answer
docker run -itd --name gaurav sandipholambe/csvserver:latest /bin/bash
#check image and container in background
docker images
docker ps

#question 2nd answer
container is succesfully created not given any error.

#question 3rd answer
vi gencsv.sh
#in vi mode below script are created for inputFile
for (( i=0; i <= 10000; i++ )); do
    read -e input
    echo $i,$input  >> inputFile
done

#Give the permission to inputFile to read other user also
chmod 777 inputFile

#question 4th answer
docker run -itd --name gaurav sandipholambe/csvserver:latest /bin/bash
