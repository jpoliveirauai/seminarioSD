docker run -d --name RabbitMQ -p 15672:15672 -p 5672:5672 rabbitmq:3-management
# Links:
# http://172.17.0.1:15672/
# http://172.17.0.1:5672/
/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:/snap/intellij-idea-community/152/lib/idea_rt.jar=37903:/snap/intellij-idea-community/152/bin -Dfile.encoding=UTF-8 -classpath /home/jpveira/Documents/TrabalhoSD/target/classes:/home/jpveira/.m2/repository/com/rabbitmq/amqp-client/5.7.1/amqp-client-5.7.1.jar:/home/jpveira/.m2/repository/org/slf4j/slf4j-api/1.7.26/slf4j-api-1.7.26.jar:/home/jpveira/.m2/repository/org/slf4j/slf4j-simple/1.7.26/slf4j-simple-1.7.26.jar Send
/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java -javaagent:/snap/intellij-idea-community/152/lib/idea_rt.jar=32921:/snap/intellij-idea-community/152/bin -Dfile.encoding=UTF-8 -classpath /home/jpveira/Documents/TrabalhoSD/target/classes:/home/jpveira/.m2/repository/com/rabbitmq/amqp-client/5.7.1/amqp-client-5.7.1.jar:/home/jpveira/.m2/repository/org/slf4j/slf4j-api/1.7.26/slf4j-api-1.7.26.jar:/home/jpveira/.m2/repository/org/slf4j/slf4j-simple/1.7.26/slf4j-simple-1.7.26.jar Recv
