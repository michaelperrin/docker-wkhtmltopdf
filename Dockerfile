FROM debian:jessie
LABEL maintainer "Michaël Perrin <contact@michaelperrin.fr>"

RUN apt-get update \
    && apt-get install -y \
        curl \
        libxrender1 \
        libfontconfig \
        libxtst6 \
        xz-utils

ENV WKHTMLTOPDF_VERSION 0.12.3

RUN curl "https://downloads.wkhtmltopdf.org/0.12/${WKHTMLTOPDF_VERSION}/wkhtmltox-${WKHTMLTOPDF_VERSION}_linux-generic-amd64.tar.xz" -L -o "wkhtmltopdf.tar.xz"
RUN tar Jxvf wkhtmltopdf.tar.xz
RUN mv wkhtmltox/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf

ENTRYPOINT ["wkhtmltopdf"]
