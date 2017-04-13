# Fabric Composer

This is a simple commandline-centric application to get started with the Fabric Composer framework quickly and easily.
Starting from nothing to an application running against and actual Hyperledger fabric.

## Getting started
You need to perform the following extra steps to get the sample to work.
- mkdir -p ~/.composer-connection-profiles/defaultProfile
- cd sample-applications-hlfv1/packages/getting-started
- open hlfv1/connection.json with your preferred editor and change the line
```
"keyValStore": "YOUR_HOME_DIR/.hfc-key-store",
```
replacing YOUR_HOME_DIR with your fully qualified home directory for example 
```
"keyValStore": "/home/fred/.hfc-key-store",
```
if you are user 'fred'
- cp hlfv1/connection.json ~/.composer-connection-profiles/defaultProfile