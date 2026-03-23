class Pixel < Formula
  desc "Pixel - a command-line tool"
  homepage "https://github.com/simonski/pixel"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.10/pixel-0.1.10-darwin-arm64.tar.gz"
      sha256 "391415c7a338f3face017b3433629c9961c8096110bb44a15d8ba99647bbfd1c"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.10/pixel-0.1.10-darwin-amd64.tar.gz"
      sha256 "d65840c1addd0d572888ebbc576f61b4511f067e7239d539e99004e61b3166c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/pixel/releases/download/v0.1.10/pixel-0.1.10-linux-arm64.tar.gz"
      sha256 "2b5b14c7f62f4e844d774519fea553fd5048b411b40aeffef02922834891e263"
    else
      url "https://github.com/simonski/pixel/releases/download/v0.1.10/pixel-0.1.10-linux-amd64.tar.gz"
      sha256 "c5f82b925d0488d81fde9c90041b9a3b0a2c824b968997a6fa37017e1da1657c"
    end
  end

  def install
    bin.install "pixel"
  end

  test do
    system "\#{bin}/pixel", "version"
  end
end

