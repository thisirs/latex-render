FROM debian:sid-slim
MAINTAINER Sylvain Rousseau <thisirs@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-full \
    biber \
    python-matplotlib \
    python-numpy \
    python-scipy \
    python-pygments \
    r-base \
    r-cran-knitr \
    r-cran-xtable && \
    apt-get --purge -y remove tex.\*-doc$ && \
    rm -rf /var/lib/apt/lists/*

# Slim down image
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*
