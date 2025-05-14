#Base image
FROM python:3.11-slim

# Sets the working directory inside the container to /app dirr
WORKDIR /app

#Copy all the files from the current directory to th /app dirr in the container
COPY . .

#expose port 5000
EXPOSE 8000

# Install the python packages (flask) listed in requirements.txt 
# using pip since pip comes pre-installed with the python based image
# --no-cache-dir is to delete downloaded packages and save space
RUN pip install --upgrade pip --no-cache-dir -r requirements.txt

#Create user sakina with home dirr and set username to sakina. Change ownership of /app recuresively to sakina
RUN adduser sakina 
RUN chown -R sakina:sakina /app
USER sakina

#Tell Docker what file to run when the container starts
CMD ["python3", "app.py"]