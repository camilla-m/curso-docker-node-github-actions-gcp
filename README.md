npm install express
node app.js
docker build -t minha-app .
docker run -p 8080:8080 minha-app

gcloud config set project unipds-489021
gcloud services enable run.googleapis.com \
    artifactregistry.googleapis.com \
    cloudbuild.googleapis.com

PROJECT_ID="unipds-489021"
REGION="us-central1"
REPO_NAME="docker-cami"
SA_NAME="github-actions-deployer"

gcloud artifacts repositories create $REPO_NAME \
    --repository-format=docker \
    --location=$REGION \
    --description="Repositorio Docker para o curso"

gcloud iam service-accounts create $SA_NAME \
    --display-name="Service Account para GitHub Actions"

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="serviceAccount:$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com" \
    --role="roles/run.admin"

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="serviceAccount:$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com" \
    --role="roles/storage.admin"

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="serviceAccount:$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com" \
    --role="roles/iam.serviceAccountUser"

gcloud iam service-accounts keys create key.json \
    --iam-account=$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com# curso-docker-node-github-actions-gcp
