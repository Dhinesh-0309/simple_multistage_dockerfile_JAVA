FROM openjdk:11-jdk AS build

COPY helloworld.java .

RUN javac helloworld.java



FROM openjdk:11-jre AS run

COPY --from=build helloworld.class .

CMD java helloworld


