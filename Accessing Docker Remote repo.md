# Accessing Docker repositories 

## Configure & Login 

To Login to the Artifactory. you need to add the Artifactory link "https://artifacts-int.sdi.corpintra.net" or Prod URL to the "insecure-registries" in /etc/docker/daemon.json and Restart the daemon , Docker.

```
"insecure-registries" : ["https://artifacts-int.sdi.corpintra.net"]
```
Docker login "Artifactory URL"
User : dillibr
Password : APIKEY 
```

## To manually set your credentials. Select the local repository and click on **"SET ME UP""** | configure you need to add the snippet to your ~/.docker/config.json file

```
   {
    "auths": {
        "https://artprod.mycompany": {
            "auth": "<USERNAME>:<PASSWORD> ("API KEY"),
            "email": "youremail@email.com"
        }
    }
}
Replace the URL,USERNAME,PASSWORD (i,e "APIKEY") and email with your details. And Restart the daemon, Docker.
```
 
## Resolving the binaries
To Pull a image from the repositories

```
- docker login "Artifactory URL" | User:"dillibr" password:"API KEY"
- docker pull artprod.mycompany/<DOCKER_REPOSITORY>:<DOCKER_TAG>  
- For Example: docker pull artifacts-int.sdi.corpintra.net/proj5-harbor/akspoc/nginx:latest
```
## Deploying the binaries
You can deploy the binaries to the local repositories in the artifactory. you can use the following steps to deploy the binaries to artifactory
```
-	docker login "Artifactory URL" | User:"dillibr" password:"API KEY"
-	docker tag <IMAGE_ID> artprod.mycompany/<DOCKER_REPOSITORY>:<DOCKER_TAG>. For Example: docker tag <Image_ID> artifacts-int.sdi.corpintra.net/dilli-docker-local/nginx:latest
- docker images ("To verify the Image Tag")
-	docker push artprod.mycompany/<DOCKER_REPOSITORY>:<DOCKER_TAG>. For Example: docker push artifacts-int.sdi.corpintra.net/dilli-docker-local/nginx:latest
```