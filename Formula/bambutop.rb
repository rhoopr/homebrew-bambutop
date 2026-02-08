class Bambutop < Formula
  desc "Lightweight terminal monitoring for Bambu Lab 3D printers"
  homepage "https://github.com/rhoopr/bambutop"
  version "0.5.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-aarch64.tar.gz"
      sha256 "07e8aaac524dbf59a360d413792424afb2fb844a419f48342c115f06f2f9226f"
    else
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-x86_64.tar.gz"
      sha256 "6b9fb7686bb61a1865d2e11958f15d1333812aba7ddb6ee8f97116d70067a257"
    end
  end

  on_linux do
    url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-linux-x86_64.tar.gz"
    sha256 "ec4af205cf7d7b8beb7db5a3de4e68fe3671490baf9fe1ee4bf2c95c7271d2b0"
  end

  def install
    bin.install "bambutop"
  end

  test do
    assert_match "Terminal-based status monitor", shell_output("#{bin}/bambutop --help")
  end
end
