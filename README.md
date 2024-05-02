


## Install/Run with Docker


Clone the project repository:
```bash
git clone https://github.com/RodolfoFerro/docker-flask-api.git
cd docker-flask-api
```

To build the Docker image, simply run:

```bash
$ docker build -t docker-flask-api .
```

To run the Docker image, run the following:
```bash
$ docker run -it -p 5000:5000 -v $(pwd):/app  docker-flask-api
```

Now you should be able to test the API at <http://localhost:5000/>.

To stop the Docker container:
```bash
$ docker ps
$ docker stop <container-id>
```

