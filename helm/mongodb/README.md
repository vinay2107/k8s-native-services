## mongodb

```shell
MongoDB&reg; can be accessed on the following DNS name(s) and ports from within your cluster:

    mongodb-0.mongodb-headless.mongodb.svc.cluster.local:27017
    mongodb-1.mongodb-headless.mongodb.svc.cluster.local:27017

To get the root password run:

    export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace mongodb mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 --decode)

To connect to your database, create a MongoDB&reg; client container:

    kubectl run --namespace mongodb mongodb-client --rm --tty -i --restart='Never' --env="MONGODB_ROOT_PASSWORD=$MONGODB_ROOT_PASSWORD" --image docker.io/bitnami/mongodb:5.0.8-debian-10-r9 --command -- bash

Then, run the following command:
    mongosh admin --host "mongodb-0.mongodb-headless.mongodb.svc.cluster.local:27017,mongodb-1.mongodb-headless.mongodb.svc.cluster.local:27017" --authenticationDatabase admin -u root -p $MONGODB_ROOT_PASSWORD

```