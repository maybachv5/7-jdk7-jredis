# 7-jdk7-jredis
jredis
ppm:
  restart: always
  ports:
    - '8080:8080/tcp'
  environment:
     - 'ENV=test'
     - 'REDIS_HOST=xxx'
     - 'REDIS_PORT=6379'
     - 'REDIS_DB=xx'
     - 'REDIS_PWD=xx'
  image: 'tomcat:latest'
  volumes:    
   - '/data/mnt/html:/usr/local/tomcat/webapps:rw'
