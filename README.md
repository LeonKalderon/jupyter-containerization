# Jupyter containerization

Create containerized data-science jupyter environment with visual debugger

## Getting Started
- Build the image
```bash
docker build -t jupyter-notebook .
```
- Run the container from the image
```bash
docker container run -p 8888:8888 jupyter-notebook
```
- Open the url prompted in the terminal 

### Prerequisites

- Docker

