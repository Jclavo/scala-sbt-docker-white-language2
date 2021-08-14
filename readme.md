
Template to run SCALA using SBT in a docker container

Steps:

    clone the repository
    docker-compose build
    docker-compose up -d
    docker exec -it myscala-sbt /bin/bash (it will open a container terminal)
    Go to folder /usr/app/samples (there are 2 basic samples "hello world and how to test", read its readmes and run them) 

Happy coding!!
