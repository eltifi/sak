# Start with the official Fedora 42 base image
FROM fedora:42

# Install basic tools
RUN dnf update -y && \
    dnf install -y \
    bash        \
    bind-utils  \
    curl        \
    fzf         \
    git         \
    htop        \
    iputils     \
    jq          \
    nano        \
    ncdu        \
    net-tools   \
    nodejs      \
    openssh     \
    python3     \
    rsync       \
    tcpdump     \
    tmux        \
    wget        \
    && npm install -g pnpm \
    && dnf clean all

# Set the default shell to bash
CMD ["/bin/bash"]
