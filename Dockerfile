# Start with the official Fedora 42 base image
FROM fedora:42

# Install basic tools and create a non-root user
# Opting out of weak dependencies and docs, and cleaning caches reduces image size.
# Running as a non-root user is a security best practice.
RUN dnf install -y --setopt=install_weak_deps=false --nodocs \
    bash         \
    bind-utils   \
    curl         \
    fzf          \
    git          \
    htop         \
    iputils      \
    jq           \
    nano         \
    ncdu         \
    net-tools    \
    nodejs       \
    npm          \
    openssh      \
    python3      \
    rsync        \
    tcpdump      \
    tmux         \
    wget         \
    # Install pnpm globally and clean up caches
    && npm install -g pnpm \
    && npm cache clean --force \
    # Clean dnf cache
    && dnf clean all \
    # Create a non-root user
    && useradd --create-home --shell /bin/bash sak

# Switch to the non-root user
USER sak
WORKDIR /home/sak

# Set the default shell to bash
CMD ["/bin/bash"]
