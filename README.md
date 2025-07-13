# SAK: Swiss Army Knife

SAK (Swiss Army Knife) is a versatile Docker image based on Fedora 42. It comes pre-installed with a variety of tools to assist with system administration, networking, and development tasks. It is designed to be a one-stop solution for managing and troubleshooting systems, including accessing remote virtual machines (VMs) securely.

The image is available on GitHub Container Registry (GHCR) and can be pulled using the following command:

```bash
docker pull ghcr.io/eltifi/sak:latest
```

## Features

This image includes the following tools:
- **System Utilities**: `bash`, `nano`, `htop`, `ncdu`, `tmux`, `fzf`
- **Networking Tools**: `curl`, `wget`, `net-tools`, `iputils`, `bind-utils`, `tcpdump`
- **Development Tools**: `git`, `python3`, `nodejs`, `pnpm`
- **Other Utilities**: `jq`, `openssh`, `rsync`

## Usage

To start a container with this image, run:

```bash
docker run -it ghcr.io/eltifi/sak:latest
```

This will launch a container with the default shell set to `bash`.

### Accessing VMs with SSH

You can mount your local `.ssh` directory as a volume to securely access your virtual machines (VMs) from within the container. The container runs as the non-root user `sak`.

```bash
docker run -it -v ~/.ssh:/home/sak/.ssh ghcr.io/eltifi/sak:latest
```

This allows you to use tools like `ssh` and `rsync` to connect to and manage your VMs seamlessly.

## Customization

You can extend this image by creating your own `Dockerfile`:

```dockerfile
FROM ghcr.io/eltifi/sak:latest

# Add your customizations here
RUN dnf install -y your-package && dnf clean all
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

## Support

If you encounter any issues or have questions, please open an issue on the [GitHub repository](https://github.com/eltifi/sak).