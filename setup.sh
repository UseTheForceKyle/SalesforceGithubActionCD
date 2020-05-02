#Log in, get all source from your Sandbox.
sfdx force:auth:web:login
cd metadata
sfdx force:source:retrieve --manifest=AllSourcePackage.xml
