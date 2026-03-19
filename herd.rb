class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "3297d58e05a79a78f5cfbbcd8a546e2a97f10105074194d89579ea7d975aac6a"
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
