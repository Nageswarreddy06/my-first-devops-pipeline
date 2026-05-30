# Automated CI/CD Web Deployment Pipeline

A fully automated DevOps pipeline that implements continuous integration and continuous deployment (CI/CD) to package a Node.js web application using Docker and deploy it dynamically onto an AWS EC2 instance.

## 🚀 Architecture Overview

This project follows **GitOps** and **Infrastructure as Code (IaC)** principles, storing both application logic and infrastructure configurations within version control.

* **Source Control:** GitHub
* **CI/CD Orchestration:** Jenkins (Declarative Pipeline)
* **Containerization:** Docker
* **Cloud Infrastructure:** AWS EC2 (Ubuntu)

## 🛠️ How It Works

1. **Code Commit:** Developer pushes changes (`app.js`, `Dockerfile`, or `Jenkinsfile`) to the `main` branch on GitHub.
2. **Pipeline Trigger:** Jenkins scans the repository (or receives a webhook) and triggers a new build.
3. **Stage 1 (Pull Code):** Jenkins checks out the latest code from GitHub into its local workspace.
4. **Stage 2 (Package with Docker):** Jenkins reads the `Dockerfile` blueprint and builds a localized Docker image (`my-web-app`).
5. **Stage 3 (Run the Website):** Jenkins stops and removes any previously running container to avoid port conflicts, then spins up the updated container in detached mode on port `3000`.

## 📈 Real-World Troubleshooting & Engineering Decisions

During development, the following environment and system infrastructure challenges were encountered and resolved:
* **Disk Space Constraints:** Resolved a pipeline failure where low server disk thresholds under `/tmp` took the worker node offline. Fixed by executing system cache cleanups, executing `docker system prune`, and tuning Jenkins node threshold properties.
* **OS Environment Quirks:** Debugged and corrected a deployment failure caused by OS-level file-naming conventions appending hidden extensions (e.g., `Dockerfile.txt`), successfully mapping clean configurations to the environment pipeline.
* 
