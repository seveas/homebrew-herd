class Katyusha < Formula
  desc "Massively parallel SSH client"
  homepage "https://katyusha.seveas.net"
  url "https://github.com/seveas/katyusha/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "580c67c68119206a037667979fc6ba4f3cea59ab3c8a533b7e5605de9a5bf8e1"
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
