#!/usr/bin/env bash
java  -Dlog4j.configuration=file:log4j.properties -Xmx1240m -classpath ../../lib/express_6_20_2019.jar:../../lib/corleone_6_20_2019.jar:../..//lib/log4j-1.2.16.jar it.jrc.lt.regexpfs.GrammarInterpreter $1