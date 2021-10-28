class Katyusha < Formula
  desc "Massively parallel SSH client"
  homepage "https://katyusha.seveas.net"
  url "https://github.com/seveas/katyusha/archive/refs/tags/v0.7.0.tar.gz"
  sha256 ""
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
