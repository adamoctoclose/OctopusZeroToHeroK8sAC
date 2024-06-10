This is a sample application deploy to Kubernetes. It's a good first application as it has no other components, but has an environment variable you can use to practice secrets on.

The docker image is built using a GitHub action and it is pushed to Docker Hub. You can find the docker repository here: https://hub.docker.com/r/octopussamples/randomquotes-k8s/tags

Prep Work
The docker image, manifest files, and variables will be provided to you. You need to provide a k8s cluster, octopus instance, and worker.

You MUST finish all the prep work prior to RKO. We will not wait for you to install K8s, configure a worker, or update your hosts file.

1. Install K8s
Install ONE of the following on a VM or locally!

docker desktop - easiest and preferred
🍎 If you are working on a Mac with an Apple chip—Docker Desktop is the easiest option:
Run softwareupdate --install-rosetta
Enable Kubernetes
Confirm Use Virtualization framework is enabled in Docker Desktop → General → Settings
rancher desktop -> please note you will not have to install docker for this to work.
minikube