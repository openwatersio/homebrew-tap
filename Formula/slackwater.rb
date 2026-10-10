class Slackwater < Formula
  desc "Tide prediction command-line interface"
  homepage "https://github.com/openwatersio/slackwater"
  version "1.0.0-beta.2"
  license "MIT"

  # Releases ship only an Apple Silicon macOS binary and an x86_64 Linux binary.
  depends_on arch: :arm64 if OS.mac?
  depends_on arch: :x86_64 if OS.linux?

  on_macos do
    on_arm do
      url "https://github.com/openwatersio/slackwater/releases/download/@slackwater/cli@1.0.0-beta.2/slackwater-darwin-arm64.tar.gz"
      sha256 "79ab264cd9c7347fbfd8485d9ffde0c9473ab6522ca6e163d360a40bc25c0fd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/openwatersio/slackwater/releases/download/@slackwater/cli@1.0.0-beta.2/slackwater-linux-x64.tar.gz"
      sha256 "40ba35dc9fc7cdd8ee87b046ef01824283b3ed99e44c57222e5f175e105d14e5"
    end
  end

  def install
    bin.install "slackwater"
    prefix.install "LICENSE", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackwater --version")
  end
end
