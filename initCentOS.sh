#Create instances with CentOS Image
export PROJECT_NAME=simpefabriccloud
export SERVER_NAME=encasa-deployment
gcloud compute instances create $SERVER_NAME --zone=us-east1-b --machine-type=n1-standard-1 --subnet=default --boot-disk-size=20GB --image=centos-7-v20200811 --image-project=centos-cloud --service-account=1047699629432-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server,https-server --boot-disk-type=pd-standard --boot-disk-device-name=encasa-deployment --reservation-affinity=any --metadata-from-file startup-script=startup-script.sh

gcloud compute --project=$PROJECT_NAME firewall-rules create default-allow-http --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:80 --source-ranges=0.0.0.0/0 --target-tags=http-server

gcloud compute --project=$PROJECT_NAME firewall-rules create default-allow-https --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:443 --source-ranges=0.0.0.0/0 --target-tags=https-server
