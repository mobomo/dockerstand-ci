# Drupalstand-CI

A basline image to be used as the base for all CI operations for Drupalstand based projects.

## Building and pushing

* Create the new image:
`docker build -t mobomo/drupalstand-ci:0.1.1 .`
* Tag the image with latest
`docker tag `
* Push to dockerhub
`docker push mobomo/drupalstand-ci:0.1.1`

