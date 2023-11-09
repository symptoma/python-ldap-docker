# Python LDAP Docker
This Docker image contains Python 3.11 and the package [`python-ldap`](https://www.python-ldap.org).

The base image is the official Python image `python:3.11`. Additionally, the requirements for building `python-ldap` (see [docs](https://www.python-ldap.org/en/python-ldap-3.4.3/installing.html#debian)) and the package itself is installed.

Published on the Docker Hub: https://hub.docker.com/r/symptoma/python-ldap-docker

## Version

| Image | python-ldap |
| ----- | ----------- |
| 0.1.0 |       3.4.3 |

## Build

```
make build
```

## Publish

First, commit your change to Git. 

`git commit -m "Update Base Image to 0.x.0"`

Then tag it. 

`git tag -a 0.x.0 -m 'Release 0.x.0'`

Then push it to Github.

`git push && git push origin --tags`

Publishing manually (after `docker login`) can be done via 

```
make push t=0.1.0
```

which tags the latest image with `0.1.0` and pushed this tag + `latest` to Docker Hub.
