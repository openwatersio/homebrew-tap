class Slackwater < Formula
  desc "Tide and current prediction command-line interface"
  homepage "https://github.com/openwatersio/slackwater"
  version "1.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/openwatersio/slackwater/releases/download/@slackwater/cli@1.0.0/slackwater-darwin-arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000" # flip day: sha256 of the published release asset
  end

  on_linux do
    url "https://github.com/openwatersio/slackwater/releases/download/@slackwater/cli@1.0.0/slackwater-linux-x64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000" # flip day: sha256 of the published release asset
  end

  def install
    bin.install "slackwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackwater --version")
  end
end
