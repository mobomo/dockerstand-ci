# Drupalstand-CI

A baseline image to be used as the base for all CI operations for Drupalstand based projects.

## Building and pushing

* Create the new image:
  * `docker build -f ./PHP7.4/Dockerfile ./PHP7.4 -t mobomo/drupalstand-ci:7.4-latest .`
  * `docker build -f ./PHP8.0/Dockerfile ./PHP8.0 -t mobomo/drupalstand-ci:8.0-latest .`
* Tag the image with latest
  * `docker tag mobomo/drupalstand-ci:7.4-latest mobomo/drupalstand-ci:7.4-<SEMVER>`
  * `docker tag mobomo/drupalstand-ci:8.0-latest mobomo/drupalstand-ci:8.0-<SEMVER>`
* Push to dockerhub
  * `docker push mobomo/drupalstand-ci:7.4-<SEMVER>`
  * `docker push mobomo/drupalstand-ci:7.4-latest`
  * `docker push mobomo/drupalstand-ci:8.0-<SEMVER>`
  * `docker push mobomo/drupalstand-ci:8.0-latest`

