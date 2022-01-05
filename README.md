# Drupalstand-CI

A baseline image to be used as the base for all CI operations for Drupalstand based projects.

## Building and pushing

* On a successful merge/push to the `master` branch Docker Hub will automatically update the following tags as needed:
  * 8.0-latest
  * 7.4-latest
* To tag a specific release use `git tag` using the following formats:
  * 8.0-x.x.x
  * 7.4-x.x.x
* Then `git push origin --tags` to push the tags to github and trigger the release builds on Docker Hub.


