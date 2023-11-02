# Jenkins Deploy

## Jenkins docker in docker lab

Create Docker image

```bash
docker image build -t custom-jenkins-docker .
```

Run container

```bash
./run.sh -c
```

Stop and remove container

```bash
./run.sh -r
```

## Links

https://hackmamba.io/blog/2022/04/running-docker-in-a-jenkins-container/