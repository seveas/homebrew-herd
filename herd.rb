class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "cf1c8255e7dc2c5c7dde55a73ae1010f4664e13dd9d50a9dd3a753340651e8a5"
  license "MIT"

  depends_on "go" => [:build, :test]

  def install
    system "make"
    bin.install "herd"
  end

  test do
    system "go", "test", "./..."
  end
end
