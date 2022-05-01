## mongodb

```shell
MongoDB&reg; can be accessed on the following DNS name(s) and ports from within your cluster:

    mongo-mongodb-0.mongo-mongodb-headless.mongo.svc.cluster.local:27017
    mongo-mongodb-1.mongo-mongodb-headless.mongo.svc.cluster.local:27017

To get the root password run:

    export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace mongo mongo-mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 --decode)

To connect to your database, create a MongoDB&reg; client container:

    kubectl run --namespace mongo mongo-mongodb-client --rm --tty -i --restart='Never' --env="MONGODB_ROOT_PASSWORD=$MONGODB_ROOT_PASSWORD" --image docker.io/bitnami/mongodb:5.0.8-debian-10-r9 --command -- bash

Then, run the following command:
    mongosh admin --host "mongo-mongodb-0.mongo-mongodb-headless.mongo.svc.cluster.local:27017,mongo-mongodb-1.mongo-mongodb-headless.mongo.svc.cluster.local:27017" --authenticationDatabase admin -u root -p $MONGODB_ROOT_PASSWORD
```

```shell
# Show databases:
show dbs

#Show status of replica sets:
rs.status()

#Create or use db
use rtd

#Add data
db.users.insert({ id: 1 })

# show collections
show collections
```