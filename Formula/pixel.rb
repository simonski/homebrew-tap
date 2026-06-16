class Pixel < Formula
  desc "Pixel - simplified container hosting for your homelab"
  homepage "https://github.com/simonski/pixel"
  version "0.1.211"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.211/pixel-0.1.211-darwin-arm64.tar.gz"
      sha256 "bda672f3e965975a97ac0480fcbc78bb123740c4788aefdc45447548b8ccc25b"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.211/pixel-0.1.211-darwin-amd64.tar.gz"
      sha256 "cda1fe07728cf5742f551ac16517f28f3dc96d9869a339206f408b30dced04df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.211/pixel-0.1.211-linux-arm64.tar.gz"
      sha256 "cc9fc0f644493a77f39f2777e5b20834c199d1a07c76dd78a73eee61e7421a8a"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.211/pixel-0.1.211-linux-amd64.tar.gz"
      sha256 "921fd6cd5288ebf6e9c10fbceeff2ef05322fba45321c20961042265f4bfccd9"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "#{bin}/pixel", "version"
  end
end
