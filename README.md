# miniscience
A simple docker image to do some science... Particularly useful for CSE6240 at Georgia Tech...

## Get Started

```
# start.sh
docker pull rricard/miniscience
docker run -p 8888:8888 -v $(pwd):/opt/notebooks rricard/miniscience
```
