#!/bin/sh

CATALINA_OPTS="-Xms64m -Xmx4096m -Xss1024K -XX:PermSize=64m -XX:MaxPermSize=2048m -Duser.timezone=Asia/Shanghai -Dspring.profiles.active=${ENV}"