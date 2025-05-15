1. Create a Docker file 
    -Use versioned and slim based image to save space
    -No run as root user
    -No expose security data
2.Crete a simple app.py file that print a simple spring
3.Create a jenkin pipiline that:
    -Build and tag the image from the Dockerfile
    -Push the built image on dockerhub
4.Deploy the .py application

Ps. -Jenkins run as jenkins user and jenkins group 
     (that is why when we ls in /var/lib/jenkins/workspace, all the files's username and groups are jenkins)
    -So If I want jenkins to have access to docker command, the add jenkins user in docker group to allow jenkins access to docker
    -sudo usermod -aG docker jenkins
