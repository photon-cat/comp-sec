# x86-64 Ubuntu 24.04 lab box for following the LiveOverflow binary exploitation series.
# Runs under Rosetta on Apple Silicon (via Colima --vz-rosetta).
FROM --platform=linux/amd64 ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential gcc-multilib g++-multilib \
        gdb gdb-multiarch qemu-user \
        binutils file strace ltrace nasm \
        python3 python3-pip python3-venv \
        vim less git curl ca-certificates netcat-openbsd procps \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
CMD ["/bin/bash"]
