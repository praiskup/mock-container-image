FROM fedora:42

# https://github.com/containers/buildah/issues/3666#issuecomment-1351992335
VOLUME /var/lib/containers

RUN dnf -y install mock koji && \
    dnf -y clean all && \
    useradd mockbuilder && \
    usermod -a -G mock mockbuilder
