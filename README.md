# GitHub Runner Playwright

**GitHub Runner Playwright** is a project designed to create and manage self-hosted runners on Debian systems specifically for executing Playwright tests in GitHub workflows. These runners allow you to effectively run your Playwright test automation directly on your own infrastructure, providing greater control, performance, and flexibility.

## Features

- **Self-Hosted Runner**: Deploy a Debian-based self-hosted runner optimized for running Playwright tests within your GitHub workflows.
- **Customizable Environment**: Tailor the runner environment to meet your specific needs, including custom software, libraries, and configurations necessary for Playwright.
- **Cost-Effective**: Utilize existing infrastructure, potentially reducing costs associated with GitHub-hosted runners.
- **Enhanced Performance**: Improve workflow execution time by using tailored or more powerful hardware suited for running Playwright tests.
- **Increased Security**: Keep sensitive test data and environment variables within your own network by hosting runners internally.

## Prerequisites

Before setting up a GitHub Runner Playwright, ensure you have the following:

- A Docker server instance with network access.
- Administrative privileges to install necessary packages and make system configurations.
- A GitHub account with repository access to set up and manage actions.

## Installation and Setup

1. **Clone the Repository**

   Start by cloning this repository to your local machine or server:

   ```bash
   git clone https://github.com/jbrazio/github-runner-playwright.git
   cd github-runner-playwright
   ```

2. **Configure the Runner**

   Locate the `docker-compose.example` file and update the required settings, including the runner token and organization. After making the necessary changes, rename it to `docker-compose.yaml`.

3. **Start the Runner**

   Start the runner to begin processing workflows:

   ```bash
   docker compose up -d
   ```

## Usage

Once the runner is set up and running, you can add `.yml` workflow files in your GitHub repository to start using the runner for Playwright tests. Customize the workflows to leverage your self-hosted runner's capabilities for running automated browser tests.

## Troubleshooting

- **Runner Fails to Start:** Ensure all dependencies are installed and configurations in `docker-compose.yaml` are correctly set.
- **Performance Issues:** Optimize your server hardware or configuration for better performance, especially for running resource-intensive tests.

## Contributing

Contributions to this project are welcome! Feel free to open issues or submit pull requests with enhancements and bug fixes.

## License

This project is licensed under the GPLv3 License. See the `LICENSE` file for details.
