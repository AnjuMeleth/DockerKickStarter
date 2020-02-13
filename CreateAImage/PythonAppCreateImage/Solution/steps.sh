# Create a Dockerfile for the Python application
docker build . -t anjurose/webapp
docker run --name MyApp -p 5000:5000 anjurose/webapp

