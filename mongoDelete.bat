echo Eliminando servicio
kubectl delete -n practice-namespace service services-mongo

echo Eliminando deployment
kubectl delete -n practice-namespace deployment mongo-deployment

echo Eliminando reclamos de volumen
kubectl delete -n practice-namespace persistentvolumeclaim pcv-mongo

echo Eliminando volumenpersistente
kubectl delete persistentvolume pv-mongo-volume

echo Eliminando storageclass
kubectl delete storageclass mongo

echo configmap
kubectl delete -n practice-namespace configmap mongo-configmap
