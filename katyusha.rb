class Katyusha < Formula
  desc "Massively parallel SSH client"
  homepage "https://katyusha.seveas.net"
  url "https://github.com/seveas/katyusha/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "587aa871b8c0e8297de060c2ae24625bf4cbf0e924b5393fa7f1775aed2c6fb4"
  license "MIT"

  depends_on "go" => [:build, :test]

  # We need an up-to-date ssh agent
  depends_on "openssh"

  def install
    system "make"
    bin.install "katyusha"
  end

  test do
    system "go", "test", "./..."
  end
end
