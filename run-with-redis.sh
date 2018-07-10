#!/bin/bash
_CTXT=$CATALINA_HOME/conf/context.xml
sed -i  's#</Context>##' $_CTXT
echo '<Valve className="com.orangefunction.tomcat.redissessions.RedisSessionHandlerValve" />' >> $_CTXT
echo '<Manager className="com.orangefunction.tomcat.redissessions.RedisSessionManager"' >> $_CTXT
echo " host=\"$REDIS_HOST\"" >> $_CTXT
echo " port=\"$REDIS_PORT\"" >> $_CTXT
echo " database=\"$REDIS_DB\"" >> $_CTXT
echo " password=\"$REDIS_PWD\"" >> $_CTXT
echo ' maxInactiveInterval="60" />' >> $_CTXT
echo '</Context>' >> $_CTXT

exec /run.sh
