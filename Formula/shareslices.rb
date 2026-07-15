class Shareslices < Formula
  desc "Publish and manage ShareSlices artifacts"
  homepage "https://github.com/walnut1024/ShareSlices"
  version "0.2.0"

  on_macos do
    odie "ShareSlices supports macOS Apple Silicon only" unless Hardware::CPU.arm?
    url "https://github.com/walnut1024/ShareSlices/releases/download/cli-v0.2.0/shareslices-aarch64-apple-darwin.tar.gz"
    sha256 "45178d21c3ff8eb4022634ddfdc3b8ecbc30528698a44dc464eda1a02a68b5a4"
  end

  on_linux do
    url "https://github.com/walnut1024/ShareSlices/releases/download/cli-v0.2.0/shareslices-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6ced3d0b8d8ce6b58c5b23e4e025551bf476a4410705c8ec40ddf45422aaab55"
  end

  def install
    bin.install "shareslices"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shareslices --version")
  end
end
