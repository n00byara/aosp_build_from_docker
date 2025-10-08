FROM ubuntu:22.04
WORKDIR /srv/src

ENV DEBIAN_FRONTEND=noninteractive

ARG UID
ARG GID
ARG PASSWORD=password
ARG USER_NAME
ARG USER_EMAIL

RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    git \
    curl \
    wget \
    unzip \
    bc \
    bison \
    build-essential \
    ccache \
    cmake \
    flex \
    g++ \
    gcc \
    gnupg \
    gperf \
    libxml2-utils \
    make \
    ninja-build \
    python3 \
    python3-pip \
    python-is-python3 \
    rsync \
    sudo \
    zlib1g-dev \
    libncurses5 \
    libssl-dev \
    liblz4-tool \
    lzop \
    zip \
    coreutils \
    dosfstools \
    e2fsprogs \
    fdisk \
    kpartx \
    mtools \
    pkg-config \
    zsh \
    && apt-get clean

RUN curl -o /usr/local/bin/repo https://storage.googleapis.com/git-repo-downloads/repo && \
    chmod a+x /usr/local/bin/repo

RUN pip install --upgrade pip && \
    pip install \
    six \
    requests \
    pyyaml \
    jinja2 \
    kconfiglib \
    protobuf \
    dataclasses \
    mako \
    meson \
    ply

RUN addgroup --gid $GID user && \
    adduser --uid $UID --gid $GID --disabled-password --gecos "" user && \
    echo "user:$PASSWORD" | chpasswd && \
    usermod -aG sudo user && \
    echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user

USER user

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"bureau\"/" ~/.zshrc

RUN git config --global user.email "${USER_EMAIL}" && \
    git config --global user.name "${USER_NAME}"

CMD ["/bin/bash"]