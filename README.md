# EPAM Module 2: Security. Homework

## Disclaimer
This homework has a MS Word explanatory document uploaded to the EPAM educational platform. Please refer to that document in the first place, as it has all steps described.

## TerraGoat's Repository
The source code from TerraGoat repo has been used within this task.
https://github.com/bridgecrewio/terragoat 

## Prerequisites
1. the kube-score is needed: https://github.com/zegl/kube-score
2. the tfsec is needed: https://github.com/aquasecurity/tfsec 
3. the hadolint is needed: https://github.com/hadolint/hadolint 

## Using "hadolint"
```
hadolint Dockerfile
```

## Using "tfsec"
1. Navigate to `./terragoat/terraform/aws`
2. Execute:
```
tfsec -m CRITICAL
```

## Using "kube-score"
```
kube-score deployment.yaml network-policy.yaml
```