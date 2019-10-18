# CI with Docker Detailed Design
## POC 1: Clone Code; Copy to a Maven docker container; Local target folder
1. Clone the Java code from GitHub
2. Build the docker file to ...
a. Copy the code to a local folder
b. Execute Maven in that folder
c. Leave the artifact in a loal .m2 folder

## POC 2: Clone Code; Copy to a Maven docker container; Nexus upload
1. Clone the Java code from GitHub
2. Build the docker file to ...
a. Copy the code to a local folder
b. Execute Maven in that folder
c. Upload artifact to Nexus (running in another container)

Files:
- Create a settings.xml file to copy to local image .m2 folder
- Credentials in Nexus to allow upload
- Set Maven local Environment variables inside the image


Build a container which contains Java, Maven, Github

## POC 3: Clone code inside image, build and upload to Nexus
1. Clone code
2. Execute Maven
3. Upload to Nexus

Require persistant volume to store .m2 repository files

 

