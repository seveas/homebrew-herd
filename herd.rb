class Herd < Formula
  desc "Massively parallel SSH client"
  homepage "https://herd.seveas.net"
  url "https://github.com/seveas/herd/archive/refs/tags/v0.13.1.tar.gz"
  sha256 "e219bb211cdd4036ca1f59af58789465941624e64783bf663314c76314b02118"
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
