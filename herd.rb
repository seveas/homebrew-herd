class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "40668ef8151de22de67868bb576e6f91e5e632f07eec3258121f55553063f16e"
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
