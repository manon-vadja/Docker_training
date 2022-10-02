## Cnnect your local host (or another) to Dockerhub
(I found some help on : https://stackoverflow.com/questions/57108005/login-to-docker-hub-by-command-line)

1. Create an account on Dockerhub
2. Type : 
    docker login
You will then be asked to enter your user login and your password. Very simple ! You will also get a warning message, though, telling that your password be stored unencrypted in the docker config file on your host. 
3. So, you can either use your own DockerHub password, or create a personal token as a password - which I would suggest. You can create several tokens to connect your DockerHub account to several devices. In DockerHub, just go to : 
    account settings > security > access tokens
And enter your token when your password is asked during the login process on your host. 

 ~ * easy peasy lemon squeezy * ~ 
   

### How to store data when you use a container ? Managing volumes 
