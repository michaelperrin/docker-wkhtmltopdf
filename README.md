# Wkhtmltopdf Docker image

## Usage example

    docker run --rm -v `pwd`:/data michaelperrin/wkhtmltopdf \
        --viewport-size 1280x1024 \
        --page-size A4 \
        http://example.com \
        /data/test.pdf

### Using Docker Compose

    # docker-compose.yml
    version: '3'
    services:
      wkhtmltopdf:
        image: wkhtmltopdf:latest
        volumes:
          - .:/data

Run:

    docker-compose run --rm wkhtmltopdf \
        --viewport-size 1280x1024 \
        --page-size A4 \
        http://example.com \
        /data/test.pdf
