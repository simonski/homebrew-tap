class Pixel < Formula
  desc "Pixel - simplified container hosting for your homelab"
  homepage "https://github.com/simonski/pixel"
  version "0.1.210"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.210/pixel-0.1.210-darwin-arm64.tar.gz"
      sha256 "7ade42b204045abb3003405dd3dfea36caec75f1fadea8f74f5cd187f327efb5"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.210/pixel-0.1.210-darwin-amd64.tar.gz"
      sha256 "11acd340a5d226e512cc5f4e3abaa084ed6f8c378e104210a06dc3cb9157c39e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.210/pixel-0.1.210-linux-arm64.tar.gz"
      sha256 "456602c62872fbc9b9a551a86d1f0f2d622d6295d22f9d7a5457e31560f50fe4"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.210/pixel-0.1.210-linux-amd64.tar.gz"
      sha256 "d20ed294af6e3f526bd578b72370326d2f70b7a04c61df7a1bedeeba8cda8869"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "#{bin}/pixel", "version"
  end
end
