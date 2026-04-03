class Pixel < Formula
  desc "Pixel - a command-line tool"
  homepage "https://github.com/simonski/pixel"
  version "0.1.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.60/pixel-0.1.60-darwin-arm64.tar.gz"
      sha256 "6624f0c9a8ee7023073b7b1cbed3f76b1be381a8af8e2528ce12a3b737dbabf4"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.60/pixel-0.1.60-darwin-amd64.tar.gz"
      sha256 "c8fc0b8f35ecb8604b10039276ed7bb0fa5c87194fd64a59cc97e3ede1919339"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.60/pixel-0.1.60-linux-arm64.tar.gz"
      sha256 "258a42b9e71ec29c21ebdb1ee017f61516a4f15c9df9bfca9b07f7de486f4c58"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.60/pixel-0.1.60-linux-amd64.tar.gz"
      sha256 "8f2f21318f4cbb2153e7e5bf27faf3617df7957cf7226ddec877c1eb43852975"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "\#{bin}/pixel", "version"
  end
end

