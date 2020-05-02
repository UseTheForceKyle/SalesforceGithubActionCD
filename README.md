# Setting up SFDX project w/ Github Actions

# Prereqs:

#Create SFDX Project
force:project:create -n MyProject --manifest

#Pull existing source
mkdir mdapipkg

sfdx force:mdapi:retrieve -r ./mdapipkg -u <username> -k ./package.xml
