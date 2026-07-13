class Shareslices < Formula
  desc "Publish and manage ShareSlices artifacts"
  homepage "https://github.com/walnut1024/ShareSlices"
  version "0.1.5"

  on_macos do
    odie "ShareSlices supports macOS Apple Silicon only" unless Hardware::CPU.arm?
    url "https://github.com/walnut1024/ShareSlices/releases/download/cli-v0.1.5/shareslices-aarch64-apple-darwin.tar.gz"
    sha256 "54dbbb4aace0835228f92ee3b099edb649ea3c993e249bdb30038973b8f15e05"
  end

  on_linux do
    url "https://github.com/walnut1024/ShareSlices/releases/download/cli-v0.1.5/shareslices-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5c6984cee3e8363b7b5dc81a38c073fb91054a61da673e2a007c80da7debac07"
  end

  def install
    bin.install "shareslices"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shareslices --version")
  end
end
