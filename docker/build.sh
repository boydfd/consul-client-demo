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
