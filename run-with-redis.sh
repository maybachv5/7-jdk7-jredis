#!/bin/bash
_CTXT=$CATALINA_HOME/conf/context.xml
sed -ni "/<Context>/{p;:a;n;H;/<\/Context>/!ba;x;s/.*/<WatchedResource>WEB-INF\/web.xml<\/WatchedResource>\n\
         <Valve className=\"com.orangefunction.tomcat.redissessions.RedisSessionHandlerValve\" \/>\n\
         <Manager className=\"com.orangefunction.tomcat.redissessions.RedisSessionManager\"\n\
         host=\"$REDIS_HOST\"\n\
         port=\"$REDIS_PORT\"\n\
         database=\"$REDIS_DB\"\n\
         password=\"$REDIS_PWD\"\n\
         maxInactiveInterval=\"$REDIS_TM\" \/>/;G};p" $_CTXT
exec /run.sh
