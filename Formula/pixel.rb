class Pixel < Formula
  desc "Pixel - simplified container hosting for your homelab"
  homepage "https://github.com/simonski/pixel"
  version "0.1.213"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/homebrew-tap/releases/download/pixel-v0.1.213/pixel-0.1.213-darwin-arm64.tar.gz"
      sha256 "dc194148698db6e63beeb2973369150b693de2515672e5fd726a9d3ddfdcc6c3"
    else
      url "https://github.com/simonski/homebrew-tap/releases/download/pixel-v0.1.213/pixel-0.1.213-darwin-amd64.tar.gz"
      sha256 "98b71a21342d3fc062a46cba66244778533d98c555d539403d796c51dd587530"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/homebrew-tap/releases/download/pixel-v0.1.213/pixel-0.1.213-linux-arm64.tar.gz"
      sha256 "d2abc950154893377096061e893b47a313aefa15c216ab26b5bd2b2380b37d8f"
    else
      url "https://github.com/simonski/homebrew-tap/releases/download/pixel-v0.1.213/pixel-0.1.213-linux-amd64.tar.gz"
      sha256 "2deb315dddf70174f46173385f2d3436d97762ebf01042cde8ce56782f5339ab"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "#{bin}/pixel", "version"
  end
end
