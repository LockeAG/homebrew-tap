class Gha < Formula
  desc "GitHub Actions TUI dashboard. Never leave the terminal."
  homepage "https://github.com/LockeAG/gha"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-aarch64-apple-darwin.tar.gz"
      sha256 "dc5adcdbfae0fb32f28e6bd5b5c5d8201a704d700c64b886bbcb994c566bc773"
    else
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-x86_64-apple-darwin.tar.gz"
      sha256 "3b720182818aab2047b2ab4282c655b69ac995291e881123a95b943240708f55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "836b993a22278e9ae2deae0c451c514b05e07daebac73d755eb2b54566455bf8"
    else
      url "https://github.com/LockeAG/gha/releases/download/v#{version}/gha-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "715e95fcd0d82fd2d73278ad9e45a80f6756015dbf9415620a2b01735104f8dd"
    end
  end

  def install
    bin.install "gha"
  end

  test do
    assert_match "GitHub Actions in the terminal", shell_output("#{bin}/gha --help")
  end
end
