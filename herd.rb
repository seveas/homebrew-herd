class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "3470c8c950d4c355c8576b4b98830676e812b40082226d254a905d8dacade5a4"
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
