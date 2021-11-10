#! /bin/bash

#set JAVA_HOME
export JAVA_HOME="${JAVA_HOME:-/usr/jdk64/jdk1.8.0_112}"
export PATH=$JAVA_HOME/bin:$PATH

#set HADOOP_HOME
export HADOOP_HOME=/usr/hdp/current/hadoop-client/

#set user KERB PRINC and KEYTABL FOR DDL operations
export KERB_PRINC=""
export KEYTAB=""

#set user KERB PRINC and KEYTABL FOR disctp and tokenization
export TKN_KRB_PRINC=""
export TKN_KEYTAB=""

#set hive beeline jdbc connection string
export SRC_HIVE_JDBC=""

#set DB_NAME for hms-mirror and/or for tokenization
export DB_NAME="loc"

#set table name pattern. This accepts regex pattern and enables running hms-mirror and/or tokenization for tables that match pattern in the database mentioned above
export TBL_PATTERN=""

#This flag is need when we want to run hms-mirror to replicate tables from Hive1/Hive2 cluster
export CLASS_PATH_FLAG="--hadoop-claspath"

#Default run mode for hms-mirror is dry run, where tables are not replicated to target cluster.If mode is set to 'e' then table replication is executed.
export RUN_MODE="e"

#Report Dir for Hm-mirror. If not specified report is written to default report directory.Note: This directoy play an import role, where tables found part of this hms mirror directory are considered for data replication/distcp to target cluster.

export HMS_REPORT_DIR=""

#Flag indicaties whether tokenization should be run for given DB/Tables.Note:This also acts an indicator for distcp/data replication job to know whether to replicate tokenized data or not. Please provide Y/N.

export TKN_FLAG=""
export SDM_TKN_UTIL=""
#Set spark submit opts for tokenization application

export TKN_SPARK_SUBMIT_OPTS=""

#Set Base Path for all tokenized tables data

export TKN_BASE_PATH=""

#Set Distcp & Java Options like disable checksum, update/overwrite mode, map memory & etc.,

export DISTCP_OPTS="-pbugpt -skipcrccheck -direct -async"
export DISTCP_JAVA_OPTS="-Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts=-Xmx1536m"
