class Bambutop < Formula
  desc "Lightweight terminal monitoring for Bambu Lab 3D printers"
  homepage "https://github.com/rhoopr/bambutop"
  version "1.0.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-aarch64.tar.gz"
      sha256 "106ec5cf6bbc28634fdf96c44ac3698813acdcecb815c125259a37651668f1b5"
    else
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-x86_64.tar.gz"
      sha256 "b5439a85ebb98f9b2e137aea82d7170e6eceff6eac73e55aee5d1add0dc6b066"
    end
  end

  on_linux do
    url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-linux-x86_64.tar.gz"
    sha256 "3ce66008b75c2efe3aab117d017894b3678fe9aa3be933c96de04790e8ef05a5"
  end

  def install
    bin.install "bambutop"
  end

  test do
    assert_match "Terminal-based status monitor", shell_output("#{bin}/bambutop --help")
  end
end
