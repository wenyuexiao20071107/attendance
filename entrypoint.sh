#!/bin/bash
# 自动适配平台给的端口，修改server.xml
if [ -n "$PORT" ] && [ "$PORT" != "8080" ]; then
  sed -i "s/port=\"8080\"/port=\"$PORT\"/" "$CATALINA_HOME/conf/server.xml"
fi
# 启动tomcat
exec "$CATALINA_HOME/bin/shturl.cc/N" run