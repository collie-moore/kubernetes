## Terraform

To deploy the resources in this folder, authenticate to GCP using the gcloud CLI and run the following commands:

### Authenticate to GCP

1. Install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install), then run the following commands:

```bash
gcloud auth login
```

```bash
gcloud auth application-default login
```

2. [Create a service account](https://cloud.google.com/iam/docs/creating-managing-service-accounts) with the following roles:

- Compute Admin
- Compute Network Admin
- Compute Security Admin
- Service Account User
- Storage Admin

Use the json key file for the service account to create a file named `keys.json` in the `terraform` folder. Pass the key in the provider block in `main.tf` file.

### Deploy the resources

In the `terraform` folder, run the following commands:

```bash
terraform init
terraform plan
terraform apply
```
