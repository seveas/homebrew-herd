class Katyusha < Formula
  desc "Massively parallel SSH client"
  homepage "https://katyusha.seveas.net"
  url "https://github.com/seveas/katyusha/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "a9446da61f83a413e417bbbf01e4607e6b2980457af0be5ba008a34040a36b45"
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
