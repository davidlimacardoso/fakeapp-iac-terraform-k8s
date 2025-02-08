# demo-iac-terraform-k8s
Infraestructure Terraform and K8s to provision and management resources 

## More About The Infraestructure
The eks cluster and other Terraform resources here, are for demonstration purposes, the infraestructure provisioned hosted the application EKS. 


## Initials Settings

### AWS Role
To create the first role to Github actions, running the command below:
```bash
terraform apply -var-file=stg.tfvars \
    -target="aws_iam_openid_connect_provider.github_actions_oidc" \
    -target="aws_iam_role.github_actions_iac_role" \
    -target="aws_iam_role_policy.github_actions_iac_policy" \
    -target="aws_iam_role.github_actions_deploy_role" \
    -target="aws_iam_role_policy.github_actions_deploy_policy"
```

After create the roles, you need to add into the GitHub Settings `Secrets and Variables`.

# References

[Como utilizar IAM Roles para conectar o GitHub Actions na AWS](https://aws.amazon.com/pt/blogs/aws-brasil/como-utilizar-iam-roles-para-conectar-o-github-actions-na-aws/)

