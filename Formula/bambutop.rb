class Bambutop < Formula
  desc "Lightweight terminal monitoring for Bambu Lab 3D printers"
  homepage "https://github.com/rhoopr/bambutop"
  version "0.4.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-aarch64.tar.gz"
      sha256 "880d17f4821099512bab912660eaa4c6d2b2a7d34f9b7910dd9838d409b2d59f"
    else
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-x86_64.tar.gz"
      sha256 "7a485e55c3313aca03cd0eb54d202c5aeff46714c16f9bf0099a6a482a35e734"
    end
  end

  on_linux do
    url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-linux-x86_64.tar.gz"
    sha256 "5e76d7891a041eb244d5dc8f4b78ad11089191c3d90ed623d5d78034722d7feb"
  end

  def install
    bin.install "bambutop"
  end

  test do
    assert_match "Terminal-based status monitor", shell_output("#{bin}/bambutop --help")
  end
end
