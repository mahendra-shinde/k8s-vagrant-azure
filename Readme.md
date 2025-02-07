# Local Kubernetes Cluster on Azure VM using Vagrant

This repository contains scripts and templates to set up a Kubernetes environment using Vagrant on Azure VM.

## Prerequisites

- Azure subscription
- PowerShell


## Setup Instructions

1. Clone the repository:

    ```sh
    git clone https://github.com/mahendra-shinde/k8s-vagrant-azure
    cd k8s-vagrant-azure
    ```

2. Customize the deployment parameters:

    Edit the `azure-template/azuredeploy.parameters.json` file to set your desired `adminUsername`, `adminPassword`, and `vmSize`.

3. Deploy the Azure resources:
    Use the Azure CLI or Azure PowerShell to deploy the resources using the ARM template.

    ```sh
    az deployment group create --resource-group <your-resource-group> --template-file azure-template/azuredeploy.json --parameters @azure-template/azuredeploy.parameters.json
    ```

4. The deployment will automatically run the `install-vagrant.ps1` script to set up the necessary software on the VM.

## Installed Software

The following software will be installed on the VM:

- Visual C++ Redistributable
- Python 3
- VirtualBox 7.1
- Vagrant (latest version)
- CMDer Terminal Emulator
- Visual Studio Code 1.97

## Notes

- Ensure that the `install-vagrant.ps1` script has the necessary permissions to execute.
- The deployment process may take some time depending on your network speed and Azure resource availability.

