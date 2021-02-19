FROM node:12-buster-slim
RUN apt-get update \
    && apt-get install -y --no-install-recommends git-core ca-certificates \
    && rm -rf /var/lib/apt/lists/*
RUN npm install -g semantic-release @semantic-release/gitlab @semantic-release/changelog @semantic-release/exec @semantic-release/git semantic-release-slack-bot
