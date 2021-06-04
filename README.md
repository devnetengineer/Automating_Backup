Running a containerized SFTP server to back up important files/directories

The Docker image that will be used is:

https://hub.docker.com/r/atmoz/sftp/


username: bruce
password: food

1. Run the SFTP container
2. Set the appropriate environment variables 
3. Use the bash script to back up the directory with persistent data on the host, which then would get backed up to the SFTP container 


