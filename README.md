# socksd

A Dockerized SSH daemon for [socksproxy](https://github.com/zbo14/socksproxy).

## Install

Make sure you have [Docker](https://docs.docker.com/install/) installed.

Then `git clone` the repository.

## Usage

First `cd` into the repository and `chmod +x socksd` if you haven't before.

### Build

`./socksd build`

Build the Docker image for the daemon.

### Initialize

`./socksd init`

Create the `./home` and `./root` directories, SSH keys, and the `authorized_keys` file.

The directories will be mounted as volumes inside the container when the daemon starts.

This command only needs to run once.

### Start

`./socksd start`

Start a Docker container running the daemon.

You will be prompted to enter a password for user `socksproxy` (*Note*: proxies will still authenticate with their public keys).

### Add public key

`./socks add-key PUBKEY`

Add a proxy's public key to the aforementioned `authorized_keys` file.

The proxy should then be able to authenticate with the daemon.

### Stop

`./socksd stop`

Remove the Docker container and its volumes.
