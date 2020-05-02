![](https://github.com/UseTheForceKyle/SalesforceGithubActionCD/workflows/CD%20CI%20of%20SFDX%20project%20to%20scratch%20org/badge.svg)
# Setting up SFDX project w/ Github Actions

# Prereqs:

#Create SFDX Project
```
force:project:create -n MyProject --manifest
```

#Pull existing source
```
mkdir mdapipkg

sfdx force:mdapi:retrieve -r ./metadata -u <username> -k ./AllSourcePackage.xml
cd metadata/
unzip unpackaged.zip
rm unpackaged.zip
rm ./metadata/unpackaged/managedContentTypes/news.managedContentType
sfdx force:mdapi:convert --rootdir unpackaged --outputdir metadataSourceFormat
sfdx force:mdapi:deploy -c -d ./metadata/unpackaged/metadataSourceFormat -u me@mycompany.com -w 10

```
