class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "c7b4c657d98f2c682bd4f6cfcc8df4e453b439d1a2a7eb1c93e446e6651b4463"
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
