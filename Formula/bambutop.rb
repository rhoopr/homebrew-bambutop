class Bambutop < Formula
  desc "Lightweight terminal monitoring for Bambu Lab 3D printers"
  homepage "https://github.com/rhoopr/bambutop"
  version "0.4.2"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-aarch64.tar.gz"
      sha256 "51958f1c38bed711e996f6abb9e33bbd5a2b2cf13b96f2f37e0cd17942e7602a"
    else
      url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-macos-x86_64.tar.gz"
      sha256 "867eac2792fdf64a1f488b727addb68c3950daa7ed04698273393646c931d1db"
    end
  end

  on_linux do
    url "https://github.com/rhoopr/bambutop/releases/download/v#{version}/bambutop-linux-x86_64.tar.gz"
    sha256 "33a0a16188ab05945715e1bfc28effb80db2960e504eff0a0d3128da4b13fe82"
  end

  def install
    bin.install "bambutop"
  end

  test do
    assert_match "Terminal-based status monitor", shell_output("#{bin}/bambutop --help")
  end
end
