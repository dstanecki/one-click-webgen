# one-click-webgen

**one-click-webgen** is a CI/CD pipeline that automatically generates and deploys fully functional websites from user prompts—no manual coding required. Leveraging the OpenAI API, the GitHub Actions workflow creates AI-generated images, HTML, and CSS files, commits them to the repository, and publishes the site via GitHub Pages.

## 🚀 Features

- Generate complete websites from simple prompts
- Auto-generate images, HTML, and CSS using OpenAI
- One-click deployment via GitHub Actions
- Live hosting with GitHub Pages

## 🔧 Prerequisites

Before using this project, ensure the following:

- GitHub Pages is enabled for your repository.
- You have an OpenAI account with API access (requires purchase of API credits)
- Your OpenAI organization is verified (required to use the OpenAI protected engines, in this case that's the image generation engine)
- Your OpenAI API key is stored in GitHub Actions secrets:
  - Go to your repository > Settings > Secrets and variables > Actions.
  - Add a new secret named `OPENAI_API_KEY`.

## 🛠️ How It Works

1. You enter a prompt to generate AI art, a prompt to generate the website text content, and a prompt to describe what the visual theme should be.
2. GitHub Actions triggers on manual dispatch.
3. The pipeline uses the OpenAI API to generate PNG images and HTML docs with internal CSS.
4. The generated files are committed and pushed.
5. GitHub Pages publishes the site automatically.
