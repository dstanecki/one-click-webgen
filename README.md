# one-click-webgen

**one-click-webgen** is a CI/CD pipeline that automatically generates and deploys fully functional websites from user prompts—no manual coding required. Leveraging the OpenAI API, the GitHub Actions workflow creates AI-generated images, HTML, and CSS files, commits them to the repository, and publishes the site via Azure or GitHub Pages.

![one-click-webgen.drawio.png](/docs/one-click-webgen.drawio.png)

## 🚀 Features

- Generate complete websites from simple prompts
- Auto-generate images, HTML, and CSS using OpenAI
- One-click deployment via GitHub Actions
- Live hosting with Azure or GitHub Pages

## 🔧 Prerequisites

Before using this project, ensure the following:

- Azure Credentials are configured in GitHub Secrets OR GitHub Pages is enabled for your repository.
- You have an OpenAI account with API access (requires purchase of API credits)
- Your OpenAI organization is verified (required to use the OpenAI protected engines, in this case that's the image generation engine)
- Your OpenAI API key is stored in GitHub Actions secrets:
  - Go to your repository > Settings > Secrets and variables > Actions.
  - Add a new secret named `OPENAI_API_KEY`.

### **How It Works**

- You configure your Azure API credentials and OpenAI API key/credits ($$)
- You enter a prompt to generate AI art, a prompt to generate the website text content, and a prompt to describe what the visual theme should be.
- GitHub Actions triggers on manual dispatch.
- The pipeline uses the OpenAI API to generate PNG images and HTML docs with internal CSS.
- The generated files are deployed to Azure using Terraform (or optionally GitHub Pages static hosting)
- GitHub Actions outputs the live link

### **Demonstrating website generation**

#### User prompt:
![one-click-webgen-user-prompt.png](/docs/one-click-webgen-user-prompt.png)

#### Website link output:
![website-link-output.png](/docs/website-link-output.png)

#### Live Hawaii-themed duck site:
![hawaii-themed-duck-site.png](/docs/hawaii-themed-duck-site.png)