class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "9ec3a1525aa7d2e052d77f704be489c7a61ece4c9aeda93a0b63cc0076ae8a75"
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
