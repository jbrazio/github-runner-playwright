FROM ghcr.io/jbrazio/github-runner-debian:main

LABEL org.opencontainers.image.authors="jbrazio"
LABEL org.opencontainers.image.description="Github Actions Playwright runner"
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
LABEL org.opencontainers.image.source=https://github.com/jbrazio/github-runner-playwright.git

USER root

# update the base packages and add a non-sudo user
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get upgrade -y

# download and install nodejs
ENV NODE_VERSION=22.x
RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION} | bash - \
  && apt-get install -y --no-install-recommends nodejs \
  && node --version && npm --version

# https://github.com/microsoft/playwright/blob/main/utils/docker/Dockerfile.noble
ENV PLAYWRIGHT_BROWSERS_PATH=/ms-playwright
RUN npx playwright install@1.50.1 --with-deps \
  && chown -R debian:debian /ms-playwright

# remove build dependencies and unnecessary files
RUN apt-get clean \
  && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*

USER debian
