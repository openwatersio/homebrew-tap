class Tile57 < Formula
  desc "Nautical chart engine: IHO S-101 and S-57 charts to tiles, PNG, and PDF"
  homepage "https://github.com/beetlebugorg/tile57"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/openwatersio/tile57/releases/download/v0.3.0/tile57-0.3.0-aarch64-macos.tar.gz"
      sha256 "a4ccee459de13fff3eeed655846bc32d1898b0413734391d852e4a3bca52dfda"
    end
    on_intel do
      url "https://github.com/openwatersio/tile57/releases/download/v0.3.0/tile57-0.3.0-x86_64-macos.tar.gz"
      sha256 "0254b69300443944fcb09be159e85d521a53442287437b410b87b9b87b234221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openwatersio/tile57/releases/download/v0.3.0/tile57-0.3.0-aarch64-linux-gnu.tar.gz"
      sha256 "b5ccb910288dc6c3e1d397cba102c9f5ead0b13d25552b565db85b11a7eacc7b"
    end
    on_intel do
      url "https://github.com/openwatersio/tile57/releases/download/v0.3.0/tile57-0.3.0-x86_64-linux-gnu.tar.gz"
      sha256 "87dcec3b5b3a9fcfdfaa2d6a807063391c1e3917389e59be14169a0ef7a29615"
    end
  end

  def install
    bin.install "bin/tile57"
    lib.install "lib/libtile57.a"
    include.install "include/tile57.h"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tile57 version 2>&1")
  end
end
