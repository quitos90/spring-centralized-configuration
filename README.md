# spring-centralized-configuration

POC Spring centralized configuration.


### Prerequisites

- maven
- java
- docker
- docker-compose

```
mmartin@mmartin:~/workspace/learning/spring-centralized-configuration/configuration-server$ mvn --version
Apache Maven 3.6.0
Maven home: /usr/share/maven
Java version: 1.8.0_222, vendor: Private Build, runtime: /usr/lib/jvm/java-8-openjdk-amd64/jre
Default locale: es_ES, platform encoding: UTF-8
OS name: "linux", version: "4.15.0-70-generic", arch: "amd64", family: "unix"
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mmartin@mmartin:~/workspace/learning/spring-centralized-configuration/configuration-server$ java -version
openjdk version "1.8.0_222"
OpenJDK Runtime Environment (build 1.8.0_222-8u222-b10-1ubuntu1~18.04.1-b10)
OpenJDK 64-Bit Server VM (build 25.222-b10, mixed mode)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mmartin@mmartin:~/workspace/learning/spring-centralized-configuration/configuration-server$ docker -v
Docker version 18.09.5, build e8ff056
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mmartin@mmartin:~/workspace/learning/spring-centralized-configuration/configuration-server$ docker-compose -v
docker-compose version 1.18.0, build 8dd22a9

```

### Installing

Clean and install the components configuration-client and configuration-server

```
cd configuration-client
./mvnw clean install
cd ..
```

And server

```
cd configuration-server
./mvnw clean install
cd ..
```

And start docker-compose

```
docker-compose up --build
```
## Acknowledgments

* https://spring.io/guides/gs/centralized-configuration/
