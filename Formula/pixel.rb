class Pixel < Formula
  desc "Pixel - a command-line tool"
  homepage "https://github.com/simonski/pixel"
  version "0.1.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.59/pixel-0.1.59-darwin-arm64.tar.gz"
      sha256 "24a9272fd902ade877abc18671307b252586f5838fe87f54e530d86411d729c4"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.59/pixel-0.1.59-darwin-amd64.tar.gz"
      sha256 "4d7667eb0d279aee283808e71e6f8dc52944a0782abeb019223fcc6017392a93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.59/pixel-0.1.59-linux-arm64.tar.gz"
      sha256 "b21a6dfe62151b58c59f9aad557e4f59f271f9b5ba4afca7d505bfcfb0e666f3"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.59/pixel-0.1.59-linux-amd64.tar.gz"
      sha256 "5810dabd245a15744ceb4454f3e133019396c2b4180c008428845caac27adcb6"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "\#{bin}/pixel", "version"
  end
end

