# rockchip-chromium-x11-patch

[![Build & Release](https://github.com/radxa-pkg/rockchip-chromium-x11-patch/actions/workflows/release.yml/badge.svg)](https://github.com/radxa-pkg/rockchip-chromium-x11-patch/actions/workflows/release.yml)

This provides one service to create needed devices for rockchip chromium x11 at system startup.

## Development dependencies

<details>
<summary>Ubuntu</summary>

```bash
sudo apt-get update
sudo apt-get build-dep --no-install-recommends .
sudo apt-get install git-buildpackage
```
</details>

## Developer commands

`make dch`: generate changelog from git log

`make deb`: create Debian package
