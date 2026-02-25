class Neaps < Formula
  desc "Tide prediction command line interface"
  homepage "https://github.com/openwatersio/neaps"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/openwatersio/neaps/releases/download/@neaps/cli@0.1.0/neaps-darwin-arm64.tar.gz"
    sha256 "6d9114800793b68e777b4f4f93d0e281e1d3e5bc049686b7098fee1105a62df2"
  end

  on_linux do
    url "https://github.com/openwatersio/neaps/releases/download/@neaps/cli@0.1.0/neaps-linux-x64.tar.gz"
    sha256 "8feb583918a94f757ff95483d55d4e7ae058c6d7425ab1a1dab3eb9bec627532"
  end

  def install
    bin.install "neaps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neaps --version")
  end
end
