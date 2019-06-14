# socksd

A Dockerized SSH daemon for [socksproxy](https://github.com/zbo14/socksproxy).

## Install

Make sure you have [Docker](https://docs.docker.com/install/) installed.

Then `git clone` the repository and `sh /path/to/socksd/install.sh`.

## Usage

### Build

`socksd build`

Build the Docker image for the daemon.

### Initialize

`socksd init`

Create directories with the SSH keys, daemon config, and `authorized_keys` file.

The daemon config is copied from the reference file `./sshd_config`. Once initialized, you can make config changes in `./etc/ssh/sshd_config` (e.g. change the `Port`).

The directories will be mounted as volumes inside the container when the daemon starts.

This command only needs to run once.

### Start

`socksd start`

Start a Docker container running the daemon on the `Port` specified in `./etc/ssh/sshd_config`.

You will be prompted to enter a password for user `socksproxy`.

**Note:** proxies will still authenticate with their public keys.

### Add public key

`socksd add-key PUBKEY`

Add a proxy's public key to the aforementioned `authorized_keys` file.

The proxy should then be able to authenticate with the daemon.

### Stop

`socksd stop`

Remove the Docker container and its volumes.

## Contributing

Please do!

If you find a bug or think of an enhancement, [open an issue](https://github.com/zbo14/socksd/issues/new). Then, if you feel so inclined, [create a pull request](https://github.com/zbo14/socksd/compare/develop...) addressing the issue. You should push your changes to a feature branch and request merge to `develop`.

You don't have to open an issue before a pull request, but it facilitates discussion and gives you a chance to receive feedback on approach/design before diving into implementation.
