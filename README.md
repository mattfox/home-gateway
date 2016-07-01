# home-gateway-salt

Configurations for home gateway, in Salt.

## Installation

Install Salt by any method.

SaltStack doesn't provide 32-bit builds, so can't be installed via `apt-get` on a MacBook1,1. Instead, try this:

```
easy_install salt
```

(`pip install salt` seemed to work but the install was broken.)

The [SaltStack official docs](http://repo.saltstack.com/) would work OK on a 64-bit system.

Get the code:

```
git clone git@github.com:mattfox/home-gateway.git
```

Configure salt minion:

```
cd home-gateway
sudo ./configure.sh
```

Now Salt is ready to configure the system.

## Usage

```
sudo salt-call --local state.apply
```

And that's it. Add `--log-level=debug` to see what Salt is really doing.
