# openjdk8을 기반 이미지로 설정
FROM openjdk:8-jdk-alpine

# 호스트의 volume 설정
VOLUME ./deployment

# build시 사용되는 변수 설정
ARG JAR_FILE=*.jar

# 컨테이너에 파일 복사
COPY ${JAR_FILE} app.jar

# 실행 명령 정의
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"] 