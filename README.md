# Homebrew Tap for Neaps

Homebrew formula for installing [neaps](https://github.com/openwatersio/neaps), a command line interface for tide predictions.

## Install

```sh
brew install openwatersio/tap/neaps
```

Or add the tap first:

```sh
brew tap openwatersio/tap
brew install neaps
```

## Usage

Search for tide prediction stations:

```sh
neaps stations "san francisco"
```

Get predicted high and low tides:

```sh
neaps extremes --station noaa/9414290
```

Get a water level timeline with an ASCII chart:

```sh
neaps timeline --station noaa/9414290
```

Start the REST API server locally:

```sh
neaps serve
```

See `neaps --help` or the [full documentation](https://github.com/openwatersio/neaps/blob/main/packages/cli/README.md) for all commands and options.

## Other install methods

If you prefer not to use Homebrew:

```sh
# Shell script (macOS / Linux)
curl -fsSL https://raw.githubusercontent.com/openwatersio/neaps/main/install.sh | sh

# npm
npm install -g @neaps/cli
```

Pre-built binaries are also available on the [GitHub Releases](https://github.com/openwatersio/neaps/releases) page.

## License

MIT
