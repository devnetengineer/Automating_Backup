Running a containerized SFTP server to back up important files/directories

The Docker image that will be used is:

https://hub.docker.com/r/atmoz/sftp

1. Run the SFTP container
2. Set the appropriate environment variables 
3. Use the bash script to back up the directory with persistent data on the host, which then would get backed up to the SFTP container 

Environment variable that will be used:
Username: bruce
Password: food
UID: 1001
Directory where the archived and compressed backup will be uploaded to: /home/bruce/upload/
Directory where the archvied and compressed backup will be uploaded from: /root/upload/
Port mapping from the host and the container: 2222 (on the host) : 22 (on the container)



Commands used:

docker run \
    -v /root/upload:/home/bruce/upload \
    -p 2222:22 -d atmoz/sftp \
    bruce:food:1001


sftp -P 2222 bruce@<localhost or IP address>
