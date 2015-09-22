# Packer Templates for OpenVZ containers

This repository contains a collection of [Packer](https://packer.io) templates for quickly creating OpenVZ compatible containers. The resulting output is a tarball containing the full directory structure of the container.

### Requirements

 - Packer
 - Qemu with KVM support
 - Guestfish
 - [packer-post-processor-tarball](https://github.com/DavidWittman/packer-post-processor-tarball)
