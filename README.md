![](https://github.com/UseTheForceKyle/SalesforceGithubActionCD/workflows/CD%20CI%20SFDX%20project%20to%20Development%20Integration%20Sandbox/badge.svg)
 
# Setting up SFDX project w/ Github Actions

# Prereqs:

1. Run setup.sh to setup SFDX project with your sandbox metadata.
2. Setup github secrets: DEVHUB_TOKEN
```
     DEVHUB_TOKEN is to be created on your local machine by running:
     sfdx force:auth:web:login
     sfdx force:force:org:display -u <yourusername> --verbose
     copying Sfdx Auth Url to the secret DEVHUB_TOKEN
```
 
 
