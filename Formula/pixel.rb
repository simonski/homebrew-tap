class Pixel < Formula
  desc "Pixel - simplified container hosting for your homelab"
  homepage "https://github.com/simonski/pixel"
  version "0.1.215"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/homebrew-tap/releases/download/pixel-v0.1.215/pixel-0.1.215-darwin-arm64.tar.gz"
      sha256 "89e6347c8951b7c5a5f2b4270ac03c1fc3bab2d963e82ecd4980e7a8cb100fb7"
    else
      url "https://github.com/simonski/homebrew-tap/releases/download/pixel-v0.1.215/pixel-0.1.215-darwin-amd64.tar.gz"
      sha256 "f6fa4b4d8322c31895593392c381be9371c020c4c9a14cfb49b9ba5a4cb418eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/homebrew-tap/releases/download/pixel-v0.1.215/pixel-0.1.215-linux-arm64.tar.gz"
      sha256 "bb50a02f69fe36f2bd6d6ccc765ce402a637140bd2bc92febca803e61ba85bb7"
    else
      url "https://github.com/simonski/homebrew-tap/releases/download/pixel-v0.1.215/pixel-0.1.215-linux-amd64.tar.gz"
      sha256 "cc7466cd01bee4bb86dbcec276d2b970dae4bf52d4e457aedc68255122afd823"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "#{bin}/pixel", "version"
  end
end
