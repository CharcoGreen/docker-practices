#!/bin/bash
## Comments

## Debug mode
set +x

NAME="jenkins"

## Help
help(){

    echo "Use: ${0} -c|r
    -c to create the container
    -r to remove the container
    "
}

## To run jenkins container.
create(){

    echo "Staring Container"
    
    docker run \
    --detach \
    --name ${NAME} \
    --publish 8080:8080 \
    --publish 50000:50000 \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume jenkins_home:/var/jenkins_home \
    custom-jenkins-docker:latest
}

remove(){

    echo "Stop and remove Container"
    docker stop ${NAME} && docker rm ${NAME}
}


## Entrypoint
run(){

    while getopts :hcr opt; do
        case ${opt} in
        h)
            help
            exit 1
            ;;
        c) create
            ;;

        d) remove
            ;;
        esac
    done

}

run ${@}
