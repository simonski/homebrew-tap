class Pixel < Formula
  desc "Pixel - a command-line tool"
  homepage "https://github.com/simonski/pixel"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.12/pixel-0.1.12-darwin-arm64.tar.gz"
      sha256 "941d069d8446255c390cdfdc70a9dd46cc33329d9a119beba1fe74eed8dfbd25"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.12/pixel-0.1.12-darwin-amd64.tar.gz"
      sha256 "4c9c31ba4665f3aff2e3821d85be7d701a1d9f9e64af7c9cc649e62f9ee9949c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.12/pixel-0.1.12-linux-arm64.tar.gz"
      sha256 "98c33762e9c9ef39a5e3f591cc60c2dfc23d4ed3d064c63607c5e08470041366"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.12/pixel-0.1.12-linux-amd64.tar.gz"
      sha256 "3e73d60b923534be2a843c691752375ce97a1fd8482995f3ddeba6e171cdc6e4"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "\#{bin}/pixel", "version"
  end
end

