#!/bin/sh
java  -Dlog4j.configuration=file:log4j.properties -Xmx1028m -classpath ../../lib/corleone_6_20_2019.jar:../../lib/log4j-1.2.16.jar it.jrc.lt.core.component.ComponentCompiler $1 $2
