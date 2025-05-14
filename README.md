1. Create a Docker file 
    -Use versioned and slim based image to save space
    -No run as root user
    -No expose security data
2.Crete a simple app.py file that print a simple spring
3.Create a jenkin pipiline that:
    -Build and tag the image from the Dockerfile
    -Push the built image on dockerhub
4.Deploy the .py application