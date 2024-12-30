# Dockerized Lubuntu Desktop .
## Build the dockerfile ising the following command below
```
docker build -t lubuntu .
```
after the dockerfile is done building, run the dockerfile image using the following command below.
```
docker run -it -p 5901:5901 -v /home/lubuntu/share --name lubuntu lubuntu
```
