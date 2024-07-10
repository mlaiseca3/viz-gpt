# Viz GPT Vercel Project

This project is built with Vercel and Node.js, and it is containerized using Docker. This guide will help you set up and run the project in a Docker container.

## Prerequisites

Make sure you have the following installed on your local machine:

- [Docker](https://www.docker.com/)
- [Node.js](https://nodejs.org/) (Optional, for local development outside of Docker)
- [Yarn](https://yarnpkg.com/) (Optional, for local development outside of Docker)

## Getting Started

### 1. Clone the Repository

Clone this repository to your local machine using:

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### 2. Set Up Environment Variables

Create a .env file in the root directory of the project and add the following environment variables:

```bash

# .env
BASE_URL=your_base_url
DEPLOYMENT_NAME=your_deployment_name
AZURE_OPENAI_KEY=your_azure_openai_key
VERCEL_EMAIL=your_vercel_email
VERCEL_TOKEN=your_vercel_token

```

Replace your_base_url, your_deployment_name, your_azure_openai_key, your_vercel_email, and your_vercel_token with your actual values.


### 3. Build the Docker Image

Build the Docker image using the provided Dockerfile:

```bash

docker build -t vercel-project .

```

### 4. Run the Docker Container
Run the Docker container from the image you built. This command will start the Vercel development server and you can log in with your Vercel account:


```bash

docker run --env-file .env -p 3000:3000 vercel-project

```

### 5. Access the Application
Open your web browser and navigate to:
http://localhost:3000
