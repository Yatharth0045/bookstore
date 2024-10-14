## Bookstore

A python microservice to create a bookstore information system

### Setup 

Install requirements

```bash
cd bookstore
pip install -r requirements.txt
```

Run server
```bash
python app.py
```

### Verify 

[Healthcheck](http://localhost:5000/)
[List all books](http://localhost:5000/books)

### Running via Docker

Check if docker exists
```bash
docker --version
```

Build docker image
```bash
docker build --build-arg PLATFORM=arm64 -t bookstore .
```

Run docker 
```bash
docker run --rm --name bookstore bookstore
```

### Running via Docker compose

Build
```bash
docker compose build
```

Run
```bash
docker compose up
```
