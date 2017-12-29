FROM anapsix/alpine-java:8_jdk_unlimited

COPY . /app

CMD /app/gradlew clean build
