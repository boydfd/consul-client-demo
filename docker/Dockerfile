FROM anapsix/alpine-java:8_jdk_unlimited

ENV root_path /app
ENV application consul_client.jar
WORKDIR ${root_path}
COPY ./$application $root_path

CMD java -r 
CMD java -Xmx512m -XX:+PrintGCDetaighs -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintHeapAtGC -verbose:gc -XX:+PrintTenuringDistribution -XX:+PrintGCApplicationStoppedTime -Xloggc:gc_as_order.log -jar $application
