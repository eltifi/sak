# Start with the official Fedora 42 base image
FROM fedora:42

# Install basic tools
RUN dnf update -y && \
    dnf install -y \
    bash \
    curl \
    wget \
    nano \
    git \
    python3 \
    nano \
    net-tools \
    iputils \
    bind-utils \
    tcpdump \
    htop \
    jq \
    openssh \
    rsync \
    ncdu \
    git \
    python3 \
    tmux \
    fzf \
    && dnf clean all

# Set the default shell to bash
CMD ["/bin/bash"]
