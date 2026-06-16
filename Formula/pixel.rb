class Pixel < Formula
  desc "Pixel - simplified container hosting for your homelab"
  homepage "https://github.com/simonski/pixel"
  version "0.1.212"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/homebrew-tap/releases/download/v0.1.212/pixel-0.1.212-darwin-arm64.tar.gz"
      sha256 "74585fecfb70ea1ff8f4f96eced0a4e47e5773b0c4b24b7814204e76ad3af921"
    else
      url "https://github.com/simonski/homebrew-tap/releases/download/v0.1.212/pixel-0.1.212-darwin-amd64.tar.gz"
      sha256 "48376216b54ef91b73b0d5bd642b9584680354aec97e25fbf703a8bfac926e20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/homebrew-tap/releases/download/v0.1.212/pixel-0.1.212-linux-arm64.tar.gz"
      sha256 "d214015dae5df1438f3865e94e27b1e451c68e4e53cc2cb74fe6cc244c267f44"
    else
      url "https://github.com/simonski/homebrew-tap/releases/download/v0.1.212/pixel-0.1.212-linux-amd64.tar.gz"
      sha256 "6ef0d4ecc93a667f26bc9ca1880f09500bb978e7b2801c3a2e1a5ab70058a45e"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "#{bin}/pixel", "version"
  end
end
