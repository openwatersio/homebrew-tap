class Neaps < Formula
  desc "Tide prediction command line interface"
  homepage "https://github.com/openwatersio/neaps"
  version "@neaps/cli@0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/openwatersio/neaps/releases/download/@neaps/cli@0.1.0/neaps-darwin-arm64.tar.gz"
    sha256 "5b26e2d01c60a4c5cdec1d2db8ec65537eb6a8afe6c7e5015082da575c35a3ef"
  end

  on_linux do
    url "https://github.com/openwatersio/neaps/releases/download/@neaps/cli@0.1.0/neaps-linux-x64.tar.gz"
    sha256 "3f7e88c6f26f71a52fa0367dfdc85c55d10da8186f67523b60b8841a30dbc7e0"
  end

  def install
    bin.install "neaps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neaps --version")
  end
end
