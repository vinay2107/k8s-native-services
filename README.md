# k8s-native-services

```shell
# Installing Strimzi

helm repo add strimzi https://strimzi.io/charts/
helm upgrade strimzi-kafka-operator strimzi/strimzi-kafka-operator -f helm/values.yaml -n kafka --create-namespace

# Creating a cluster and a topic to publish and subscribe from external client
kubectl apply -f kafka/

# Sending and receiving messages from a topic

kubectl -n my-kafka-project run kafka-producer -ti --image=quay.io/strimzi/kafka:0.28.0-kafka-3.1.0 --rm=true --restart=Never -- bin/kafka-console-producer.sh --bootstrap-server my-cluster-kafka-bootstrap:9092 --topic my-topic

kubectl -n my-kafka-project run kafka-consumer -ti --image=quay.io/strimzi/kafka:0.28.0-kafka-3.1.0 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server my-cluster-kafka-bootstrap:9092 --topic my-topic --from-beginning
```