# Infra-Ops Repository

This repository contains the infrastructure as code (IaC) configuration for deploying and managing our infrastructure. It uses Terraform to define and provision resources.

## Overview

The repository is structured as follows:

-   `.env`: Contains environment-specific variables (sensitive data).
-   `.gitignore`: Specifies intentionally untracked files that Git should ignore.
-   `backend.tf`: Configures the Terraform backend for storing state.
-   `LICENSE.md`: Contains the license information for the project.
-   `main.tf`: Defines the main infrastructure resources.
-   `outputs.tf`: Defines the output variables.
-   `providers.tf`: Configures the Terraform providers.
-   `README.md`: This file, providing information about the repository.
-   `RELEASE.md`: Contains release notes and versioning information.
-   `variables.tf`: Defines the input variables.
-   `environments/`: Contains environment-specific configurations.
    -   `development-home.tfvars`: Variables for the development environment (home).
    -   `development-office.tfvars`: Variables for the development environment (office).
    -   `production.tfvars`: Variables for the production environment.
    -   `staging.tfvars`: Variables for the staging environment.

## Recommendation

It is highly recommended to store your `tfvars` files and environment variables in MinIO or a similar object storage solution for enhanced security and version control. This helps prevent sensitive information from being exposed in your local environment or version control system.

## Getting Started

1.  **Install Terraform:** Ensure you have Terraform installed. You can download it from the [Terraform website](https://www.terraform.io/downloads.html).
2.  **Configure Providers:** Configure the necessary providers in `providers.tf`.
3.  **Define Variables:** Define your input variables in `variables.tf`.
4.  **Create Environments:** Create environment-specific configurations in the `environments/` directory.
5.  **Initialize Terraform:** Run `terraform init` to initialize the Terraform working directory.
6.  **Plan Changes:** Run `terraform plan` to see the changes that will be applied.
7.  **Apply Changes:** Run `terraform apply` to apply the changes.

## Contributing

Please read `CONTRIBUTING.md` for details on our code of conduct, and the process for submitting pull requests to us.

## License

This project is licensed under the terms of the `LICENSE.md` file.
