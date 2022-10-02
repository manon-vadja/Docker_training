# Docker - Docker Hub Challenge (1day)

## 1) Make a new Github repository with the content of the original Repo

I fork the repo on github.
Then I create a git repo on my Becode VM : time to recall I needed to create a proper SSH connection to be able to work wit git on this VM. Created the new ssh connection following the april-14th tuto.
Was able at last to clone the repo on myBecode-VM.

## 2) Create a DockerHub account.
It is already done, cf last week challenge.

I created an account on DockerHub, then had to type the command docker login.
## 3) Log in to DockerHub from your Terminal.
I am already connected, and I used the docker login command.

## 4) Craft a Dockerfile.
Instead of creating a one-time-use container, I am going to use a file that will automate this building for me.

To create a Dockerfile, I will use a simple text editor, using no specific format, and I will call my file Dockerfile.

First, I'm gonna try to run the files I was given. Tis is supposed to be a application built on Maven. I check (with "less" command) and it says I need to set up a Java-home environment var to do so. So the first software I have to install is Java Developer Kit (jdk), which I do using the cli command :
      sudo apt install default-jdk
Afterwards, I ran these two commands (while being in the root fils of the project) :
        https://hub.docker.com/layers/maven/library/maven/3.6.3-jdk-11-openj9/images/sha256-1dc7a58cf03530825335c4537c508b376155f2ccad077df511744edcd4695d0f?context=explore

The website is running on my webbrowser, so it should be ok.


## 5) Run the tests and build the artifact.
## 6) Build the Docker image.

I chose this image as a basis for my docker file :

https://hub.docker.com/layers/maven/library/maven/3.6.3-jdk-11-openj9/images/sha256-1dc7a58cf03530825335c4537c508b376155f2ccad077df511744edcd4695d0f?context=explore

And I pull it using the following command :
  docker pull maven@sha256:1dc7a58cf03530825335c4537c508b376155f2ccad077df511744edcd4695d0f
  (maven being from library/maven)

By doing so, I get this specific image and not the latest of, e.g., a specific software. Maybe it is not the best choice :)

## 7) Tag your image.
## 8) Push your image to Dockerhub.
## 9) Pull your image from Dockerhub and run a container locally.
