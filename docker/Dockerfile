FROM 8_jdk_unlimited

env root_path /app
env application consul_client.jar
workdir ${root_path}
COPY ./$application $root_path

CMD java -r 
CMD java -Xmx512m -XX:+PrintGCDetaighs -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintHeapAtGC -verbose:gc -XX:+PrintTenuringDistribution -XX:+PrintGCApplicationStoppedTime -Xloggc:gc_as_order.log -jar $application
