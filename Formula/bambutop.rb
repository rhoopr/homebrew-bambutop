class Bambutop < Formula
  desc "Lightweight terminal monitoring for Bambu Lab 3D printers"
  homepage "https://github.com/rhoopr/bambutop"
  version "1.0.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-aarch64.tar.gz"
      sha256 "e68cbceae945858e44177ffd042c55d5573765228ea73dc5a63422d8ab821012"
    else
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-x86_64.tar.gz"
      sha256 "d4950808679ad2563e8ee0537e325fa926d9cf7e8449433eda0af9ca665b4704"
    end
  end

  on_linux do
    url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-linux-x86_64.tar.gz"
    sha256 "bb229da2357afbddb25611cba74c020946321e24f0be2693099b6fb6c4f4851d"
  end

  def install
    bin.install "bambutop"
  end

  test do
    assert_match "Terminal-based status monitor", shell_output("#{bin}/bambutop --help")
  end
end
