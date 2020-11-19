FROM python:3-slim

# needed to allow linkchecker create plugin directory and initial configuration file in "home" dir
ENV HOME /tmp

RUN set -x \
    && pip install --no-cache-dir git+https://github.com/linkchecker/linkchecker.git

# /mnt enables linkchecker to access to access files on local machine if needed
VOLUME /mnt

WORKDIR /mnt

ENTRYPOINT ["linkchecker"]
