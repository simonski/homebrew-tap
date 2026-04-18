class Skills < Formula
  desc "Agentic skills manager for AI-agent skill definitions"
  homepage "https://github.com/simonski/skills"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/skills/releases/download/v0.1.9/skills-darwin-arm64.tar.gz"
      sha256 "a4044de737f99d65f4e1d2cafd55e0d9a6c67413dfe6a54adf63770f2323a7c7"
    else
      url "https://github.com/simonski/skills/releases/download/v0.1.9/skills-darwin-amd64.tar.gz"
      sha256 "3a13380aaf8bfa769a9efc4f52866667c21a243946a98cfba6904094a3af04da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/skills/releases/download/v0.1.9/skills-linux-arm64.tar.gz"
      sha256 "28e6478b6274e1539a0b0cfc1f3a19547c6b6dd736320bbd290ae390b5e187bf"
    else
      url "https://github.com/simonski/skills/releases/download/v0.1.9/skills-linux-amd64.tar.gz"
      sha256 "e56f201df69ff25d5f745da7baec0db8e2c6862b849a0df89929dcd64822f961"
    end
  end

  def install
    bin.install Dir["skills-*"].first => "skills"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills version")
  end
end
