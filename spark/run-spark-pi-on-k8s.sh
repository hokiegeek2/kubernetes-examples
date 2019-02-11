#!/bin/bash

kubectl delete pod spark-pi-driver

bin/spark-submit --master k8s://https://$1 --deploy-mode cluster --conf spark.kubernetes.node.selector.spark-node=true --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark --name spark-pi --class org.apache.spark.examples.SparkPi --conf spark.executor.instances=5 --conf spark.kubernetes.container.image=hokiegeek2/spark:v.2.4.0  --conf spark.kubernetes.driver.pod.name=spark-pi-driver local:///opt/spark/examples/jars/spark-examples_2.11-2.4.0.jar
