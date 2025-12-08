class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.15.1.tar.gz"
  sha256 "d7f33c751bd8f29f0a5973c6c33a4d8a80666c6e51f134920b8d216f0522b794"
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
