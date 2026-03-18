class Gha < Formula
  desc "GitHub Actions TUI dashboard. Never leave the terminal."
  homepage "https://github.com/LockeAG/gha"
  version "0.1.0-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-aarch64-apple-darwin.tar.gz"
      sha256 "ee4ed75eca9b38c726912ea8bf06990ac5e9e655c7deb4b6cf3bc3b741d8ca9e"
    else
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-x86_64-apple-darwin.tar.gz"
      sha256 "240eddc6542641b2e071c4086c804fe9d7b1729f2da69cb755037c5d8df8b51d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9fcefcfe46a117ae4fc622eb777e16300ff075fc81fc82fc933d811a548d23d2"
    else
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f77fe7321abe2ddc024b6dd92be1180e01e97e41a88391c6ffeae3ca2e7b151"
    end
  end

  def install
    bin.install "gha"
  end

  test do
    assert_match "GitHub Actions TUI tracker", shell_output("#{bin}/gha --help")
  end
end
