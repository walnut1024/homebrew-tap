class Shareslices < Formula
  desc "Publish and manage ShareSlices artifacts"
  homepage "https://github.com/walnut1024/ShareSlices"
  version "0.1.6"

  on_macos do
    odie "ShareSlices supports macOS Apple Silicon only" unless Hardware::CPU.arm?
    url "https://github.com/walnut1024/ShareSlices/releases/download/cli-v0.1.6/shareslices-aarch64-apple-darwin.tar.gz"
    sha256 "0a5c789877c2350af451297d1d8019380569c892ed5a2d63d882608edc3c4ccd"
  end

  on_linux do
    url "https://github.com/walnut1024/ShareSlices/releases/download/cli-v0.1.6/shareslices-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fd9a020bdf8c7025f83d157be2b52923b82520cbf9998230ea6c55160989b9e7"
  end

  def install
    bin.install "shareslices"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shareslices --version")
  end
end
