# Homebrew Tap for Slackwater

Homebrew formula for installing [slackwater](https://github.com/openwatersio/slackwater), a command line interface for tide and current predictions.

## Install

```sh
brew install openwatersio/tap/slackwater
```

Or add the tap first:

```sh
brew tap openwatersio/tap
brew install slackwater
```

An existing `neaps` install migrates to `slackwater` on `brew upgrade`.

## Usage

Search for tide prediction stations:

```sh
slackwater stations "san francisco"
```

Get predicted high and low tides:

```sh
slackwater extremes --station noaa/9414290
```

Get a water level timeline with an ASCII chart:

```sh
slackwater timeline --station noaa/9414290
```

Start the REST API server locally:

```sh
slackwater serve
```

See `slackwater --help` or the [full documentation](https://github.com/openwatersio/slackwater/blob/main/packages/cli/README.md) for all commands and options.

## Other install methods

If you prefer not to use Homebrew:

```sh
# Shell script (macOS / Linux)
curl -fsSL https://raw.githubusercontent.com/openwatersio/slackwater/main/install.sh | sh

# npm
npm install -g @slackwater/cli
```

Pre-built binaries are also available on the [GitHub Releases](https://github.com/openwatersio/slackwater/releases) page.

## License

MIT
