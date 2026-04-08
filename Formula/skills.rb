class Skills < Formula
  desc "Agentic skills manager for AI-agent skill definitions"
  homepage "https://github.com/simonski/skills"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/skills/releases/download/v0.1.1/skills-darwin-arm64.tar.gz"
      sha256 "658dff4196ca88c22a28c8551e22dd8ba92b09cebb9fff6f590d0e247a04bd2d"
    else
      url "https://github.com/simonski/skills/releases/download/v0.1.1/skills-darwin-amd64.tar.gz"
      sha256 "db97858632d9d89abd2772a1279e8dd7ab80d0c37d17cecd46962c7c0c58913b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/skills/releases/download/v0.1.1/skills-linux-arm64.tar.gz"
      sha256 "41b60e530398ed8a6026d553eea54da8b4ecc7e811b7a765ddf4990b08ba6783"
    else
      url "https://github.com/simonski/skills/releases/download/v0.1.1/skills-linux-amd64.tar.gz"
      sha256 "b162c1711303e80e73a1e49f24c2d30275382ff5d73dabeabd5331b647f936d1"
    end
  end

  def install
    bin.install Dir["skills-*"].first => "skills"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills version")
  end
end
