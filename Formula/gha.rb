class Gha < Formula
  desc "GitHub Actions TUI dashboard. Never leave the terminal."
  homepage "https://github.com/LockeAG/gha"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""
    else
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "gha"
  end

  test do
    assert_match "GitHub Actions TUI tracker", shell_output("#{bin}/gha --help")
  end
end
