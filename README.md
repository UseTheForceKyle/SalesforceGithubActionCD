# Setting up SFDX project w/ Github Actions

# Prereqs:

#Create SFDX Project
force:project:create -n MyProject --manifest

#Pull existing source
mkdir mdapipkg

sfdx force:mdapi:retrieve -r ./metadata -u <username> -k ./AllSourcePackage.xml
cd metadata/
unzip unpackaged.zip
rm unpackaged.zip
rm ./metadata/unpackaged/managedContentTypes/news.managedContentType
sfdx force:mdapi:convert --rootdir unpackaged --outputdir tmp_convert
