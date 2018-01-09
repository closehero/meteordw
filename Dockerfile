FROM abernix/meteord:node-4-base

RUN apt-get update
RUN apt-get install -y wget libjpeg62-turbo libxrender1 xfonts-base xfonts-75dpi

RUN mkdir /setup
RUN wget -O /setup/wkhtmltopdf.deb https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb
RUN cd /setup && dpkg -i wkhtmltopdf.deb && apt-get install -f .
