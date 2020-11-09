FROM python:3.9
ARG UID=1000
ARG GID=1000
RUN apt update \
    && apt install --no-install-recommends -y \
        zip \
    && rm -rf /var/lib/apt/lists/*
COPY awscli-exe-linux-x86_64.zip /tmp/awscliv2.zip
RUN cd /tmp \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -f awscliv2.zip
RUN groupadd --gid ${GID} developer \
    && useradd --uid ${UID} --gid ${GID} \
       --home-dir /home/developer \
       --create-home --shell /bin/bash \
       developer
USER developer
WORKDIR /home/developer
CMD ["bash"]
