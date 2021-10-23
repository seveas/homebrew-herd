class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "5d78810b1e91b282dec508cf3ddc63db767fc184721d918c2506f5cf8a34a69f"
  license "MIT"

  depends_on "go" => [:build, :test]

  # We need an up-to-date ssh agent
  depends_on "openssh"

  def install
    system "make"
    bin.install "herd"
  end

  test do
    system "go", "test", "./..."
  end
end
