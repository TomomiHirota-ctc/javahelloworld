FROM java:8

COPY src /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld

RUN mkdir bin

RUN javac -d bin src/HelloWorld.java

RUN apt-get update
RUN apt-get -y install vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

ENV FOO bar
