#Log in, get all source from your Sandbox.
sfdx force:auth:web:login
sfdx force:source:retrieve --manifest=./AllSourcePackage.xml
