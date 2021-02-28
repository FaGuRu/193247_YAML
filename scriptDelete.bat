echo Eliminando servicios
kubectl delete -n practice-namespace service services-mongo
kubectl delete -n practice-namespace service services-mysql
kubectl delete -n practice-namespace service services-postgres
kubectl delete -n practice-namespace service services-redis

echo Eliminando deployment
kubectl delete -n practice-namespace deployment mongo-deployment
kubectl delete -n practice-namespace deployment mysql-deployment
kubectl delete -n practice-namespace deployment postgresdb-deployment
kubectl delete -n practice-namespace deployment redis-deployment

echo Eliminando reclamos de volumen
kubectl delete -n practice-namespace persistentvolumeclaim pcv-mongo
kubectl delete -n practice-namespace persistentvolumeclaim pcv-mysql
kubectl delete -n practice-namespace persistentvolumeclaim pcv-postgres
kubectl delete -n practice-namespace persistentvolumeclaim pcv-redis

echo Eliminando volumenpersistente
kubectl delete persistentvolume pv-mongo-volume
kubectl delete persistentvolume pv-redis-volume
kubectl delete persistentvolume pv-mysql-volume
kubectl delete persistentvolume pv-postgres-volume

echo Eliminando storageclass
kubectl delete storageclass mongo
kubectl delete storageclass redis
kubectl delete storageclass mysql
kubectl delete storageclass postgres

echo configmap
kubectl delete -n practice-namespace configmap mongo-configmap
kubectl delete -n practice-namespace configmap mysql-configmap
kubectl delete -n practice-namespace configmap postgres-configmap
kubectl delete -n practice-namespace configmap redis-configmap