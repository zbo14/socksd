# socksd

An SSH daemon for [socksproxy](https://github.com/zbo14/socksproxy).

## Install

Clone the repo and `sudo sh install.sh`.

## Usage

`socksd` runs as a systemd service so you can use `systemctl` commands.

### Start

`sudo systemctl start socksd`

### Add public key

For `socksproxy` to successfully authenticate with `socksd`, you must add the client's public key to `/home/socksproxy/.ssh/authorized_keys`.

### Stop

`sudo systemctl stop socksd`

### View logs

`sudo journalctl -u socksd`

### Config

The config file `/etc/socksd/socksd.conf` contains the following:

```sh
## The port socksd listens on
PORT=17896
``````

## Contributing

Please do!

If you find a bug, think of an enhancement, or just have a question, feel free to [open an issue](https://github.com/zbo14/socksd/issues/new). You're also welcome to [create a pull request](https://github.com/zbo14/socksd/compare/develop...) addressing an issue. You should push your changes to a feature branch and request merge to `develop`.
