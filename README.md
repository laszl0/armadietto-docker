# armadietto-docker
Armadietto is a RemoteStorage server written for Node.js, all that on Docker

## Installation using Docker Compose

The following instructions deploy armadietto on your local machine using Docker Compose set up.

### Requirements

* [docker] (version `1.12+`)
* [docker-compose] (version `1.10.0+` to support Compose file version `3.0`)

### Starting/Stopping Docker

#### Start
```
docker-compose start
```

#### Stop
```
docker-compose stop
```

### Removing Docker

#### Remove the containers
```
docker-compose stop && docker-compose rm
```
