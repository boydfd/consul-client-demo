DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
application_name="consul_client"
application_jar=${application_name}.jar
cd "$DIR"
echo $DIR

cd ..
./gradlew clean build

cd -
cp -f ../build/libs/eureka-client-0.0.1-SNAPSHOT.jar ./$application_jar

docker build -t $application_name .

docker tag $application_name 172.16.35.12:5000/$application_name

docker push 172.16.35.12:5000/$application_name
