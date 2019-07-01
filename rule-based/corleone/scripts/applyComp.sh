#!/bin/sh
java  -Dlog4j.configuration=file:log4j.properties -Xmx1000m -classpath lib/corleone_6_20_2019.jar:lib/log4j-1.2.16.jar it.jrc.lt.core.component.ApplyComponent $1 $2

