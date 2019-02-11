#!/bin/bash

$SPARK_HOME/bin/spark-shell --master k8s://$1 --deploy-mode client --conf spark.kubernetes.node.selector.spark-node=true --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark --name spark-shell --conf spark.executor.instances=$2 --conf spark.kubernetes.container.image=hokiegeek2/spark:v.2.4.0
