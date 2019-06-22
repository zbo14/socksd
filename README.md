# socksd

A Dockerized SSH daemon for [socksproxy](https://github.com/zbo14/socksproxy).

## Install

Make sure you have [Docker](https://docs.docker.com/install/) installed.

Then `git clone` the repo and `sh /path/to/socksd/install.sh`.

## Usage

### Build

`$ socksd build`

Build the Docker image for the daemon.

### Initialize

`$ socksd init`

Create directories with the SSH keys and `authorized_keys` file.

The directories will be mounted as volumes in the container when it starts.

This command only needs to run once.

### Start

`$ PORT= socksd start`

Start a Docker container running the daemon on the specified port.

You will be prompted to enter a password for user `socksproxy`.

**Note:** proxies will still authenticate with their public keys.

### Get the public key

`$ socksd get-key`

Print the daemon's public key.

### Add a proxy

`$ PUBKEY= socksd add-proxy`

Add a proxy's public key to the aforementioned `authorized_keys` file.

### Get proxies

`$ socksd get-proxies`

Print the contents of the `authorized_keys` file.

### Remove a proxy

`$ PUBKEY= socksd rm-proxy`

Remove a proxy's public key from the `authorized_keys` file.

**Note:** `PUBKEY` doesn't have to be the fully-qualified public key (e.g. it can just be the username).

### Stop

`$ socksd stop`

Remove the Docker container and its volumes.

## Contributing

Please do!

If you find a bug, think of an enhancement, or just have a question, feel free to [open an issue](https://github.com/zbo14/socksd/issues/new). You're also welcome to [create a pull request](https://github.com/zbo14/socksd/compare/develop...) addressing an issue. You should push your changes to a feature branch and request merge to `develop`.
