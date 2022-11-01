# Local #

Ansible playbook for initialization of tools and repositories for work.

### What is this repository for? ##

### Installation
```bash
sudo apt install make python3.10-venv
python3 -m venv venv
source venv/bin/activate
python -m ensurepip --upgrade
pip install pipenv
make update
```

### Usage
```bash
make run
```

```bash
make run A='--tags toolbox'
```

## Available tags

### chrome
Google Chrome is a cross-platform web browser developed by Google.

### tools
- git
- vim
- bash-completion
- curl
- jq

### reps
Clone git-repositories from list

### docker
Docker Engine is an open source containerization technology for building and containerizing your applications.

[Install docker engine](https://docs.docker.com/engine/install/)

### toolbox
JetBrains Toolbox App - Manage your IDEs the easy way

[Download JetBrain Toolbox](https://www.jetbrains.com/toolbox-app/download/download-thanks.html?platform=linux)

### sublime
Sublime Text - the sophisticated text editor for code, markup and prose

[Install SublimeText](https://www.sublimetext.com/docs/linux_repositories.html)

### terraform
terraform - is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services.

[Terraform docs](https://www.terraform.io/docs)

### packer
packer - is a free and open source tool for creating golden images for multiple platforms from a single source configuration.

[Packer docs](https://www.packer.io/docs)

### terragrunt
Terragrunt is a thin wrapper that provides extra tools for keeping your configurations DRY,
working with multiple Terraform modules, and managing remote state.

[Install terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)

### kubectl
kubectl - command line tool to control Kubernetes clusters

[Install kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

### krew
Krew - package manager for kubectl plugins

[Install krew](https://krew.sigs.k8s.io/docs/user-guide/setup/install/)

### yc
yc - The Yandex.Cloud command-line interface (CLI) provides downloadable software for managing your cloud resources from the command line.

[Install yc](https://cloud.yandex.com/en-ru/docs/cli/quickstart#install)

### helm
Helm - The package manager for Kubernetes

[Install Helm](https://helm.sh/docs/intro/install/)

### minikube
minikube - local Kubernetes, focusing on making it easy to learn and develop for Kubernetes.

[minikube documentation](https://minikube.sigs.k8s.io/docs/start/)

### jx

### direnv
direnv is an extension for your shell. It augments existing shells with a new feature that can load 
and unload environment variables depending on the current directory.

[Direnv site](https://direnv.net)

[Direnv's GitHub page](https://github.com/direnv/direnv)

### vscode
Visual Studio Code is a lightweight but powerful source code editor

[VSCode documentation](https://code.visualstudio.com/docs/)

### dive
Dive is a tool for exploring a docker image, layer contents, and discovering ways to shrink the size of your Docker/OCI image.

[Dive's GitHub page](https://github.com/wagoodman/dive)
