# 以哪个镜像为基础，这里是java8，网易的这个版本会比较小
FROM hub.c.163.com/library/java:8-alpine

# 改target目录下的jar包为eureka.jar，并且添加api-gateway.jar到容器中
ADD *.jar api-gateway.jar

# 暴露哪个接口，应该不写也没有关系
EXPOSE 8081

# entrypoint是入口点，这里表示运行api-gateway.jar
ENTRYPOINT ["java", "-jar", "/api-gateway.jar"]

