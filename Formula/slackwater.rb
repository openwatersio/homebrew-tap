class Slackwater < Formula
  desc "Tide and current prediction command-line interface"
  homepage "https://github.com/openwatersio/slackwater"
  version "1.0.0-beta.1"
  license "MIT"

  # Releases ship only an Apple Silicon macOS binary and an x86_64 Linux binary.
  depends_on arch: :arm64 if OS.mac?
  depends_on arch: :x86_64 if OS.linux?

  on_macos do
    on_arm do
      url "https://github.com/openwatersio/slackwater/releases/download/@slackwater/cli@1.0.0-beta.1/slackwater-darwin-arm64.tar.gz"
      sha256 "0d45240619a83ccd0c52597dfce600b20d3165f29c5940c4970c1902ada996d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/openwatersio/slackwater/releases/download/@slackwater/cli@1.0.0-beta.1/slackwater-linux-x64.tar.gz"
      sha256 "3e6a650a55afcad72baa9335852663f07329997ea641dacd2aa7c2ae41f6eabf"
    end
  end

  def install
    bin.install "slackwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackwater --version")
  end
end
