
Template to run SCALA using SBT in a docker container

Steps:

    clone the repository
    docker-compose build
    docker-compose up -d
    docker exec -it myscala-sbt /bin/bash (it will open a container terminal)
    Go to folder /usr/app/white-language

Happy coding!!

Run steps

    sbt compile test
    sbt "testOnly *[class-test-name]"
    sbt "testOnly *[class-test-name] -- -z [test-name]"
