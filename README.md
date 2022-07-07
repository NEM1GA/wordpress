# Project report
---
### Project's reporter: Ilya Bombel
### Group number: md-sa2-20-22
---

## Description of application for deployment:
- Application: Wordpress
- Programming language: PHP, bash
- Database: MySQL
- Link to: [Docker Official Images](https://github.com/docker-library/wordpress)
---

## Technologies which were used in project:

### Orchestration: 
Kubernetes

### Automation tools:
GitHub actions, ArgoCD

### Repos:
GitHub, JFrog Artifactory, DockerHub

### Notifications:
Slack

### Other tools:
Docker, Helm

---
## Pipeline high level design:
![diagr.JPG](./diagr.JPG)

## CI/CD pipeline description:
As soon as push received in branch "main" to project GIT repo, Github actions runs ci/cd pipeline: repo checkout > automatically bump realise version and push tag > build docker image and pushe it to DockerHub > install helm and check out a helm chart by kubeval >  Helm creates a new artifact and push it to Jfrog Artifactory > send a success Slack notification, along with pipeline will fails, we will receive an alert notification in Slack.
As per changes on GitHub repo, ArgoCD detects it and starts deploying the newest Helm chart in the Kubernetes cluster.

### Rollback flow description and implementation:
By Argo CD we can rollback to any code or application version in our Git repository history

---

## Links:
My project repository: https://github.com/NEM1GA/wordpress