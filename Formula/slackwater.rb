class Slackwater < Formula
  desc "Tide and current prediction command-line interface"
  homepage "https://github.com/openwatersio/slackwater"
  version "1.0.0-beta.0"
  license "MIT"

  on_macos do
    url "https://github.com/openwatersio/slackwater/releases/download/@slackwater/cli@1.0.0-beta.0/slackwater-darwin-arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000" # pre-merge: refresh with the version to the newest @slackwater/cli release
  end

  on_linux do
    url "https://github.com/openwatersio/slackwater/releases/download/@slackwater/cli@1.0.0-beta.0/slackwater-linux-x64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000" # pre-merge: refresh with the version to the newest @slackwater/cli release
  end

  def install
    bin.install "slackwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackwater --version")
  end
end
