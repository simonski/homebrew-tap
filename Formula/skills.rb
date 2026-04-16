class Skills < Formula
  desc "Agentic skills manager for AI-agent skill definitions"
  homepage "https://github.com/simonski/skills"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/skills/releases/download/v0.1.7/skills-darwin-arm64.tar.gz"
      sha256 "9694af28098adedbe7d05688c663fb069be8108b45d9dc172ec5a133f6ecf651"
    else
      url "https://github.com/simonski/skills/releases/download/v0.1.7/skills-darwin-amd64.tar.gz"
      sha256 "4679ad0bc56a0ebb342a50632479ed25ebad28294ef3a98ff65102151d6c54a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simonski/skills/releases/download/v0.1.7/skills-linux-arm64.tar.gz"
      sha256 "a23b903f3e7d34c3320b9a96f30f2d80b64ab89553de85cd827736646e02b143"
    else
      url "https://github.com/simonski/skills/releases/download/v0.1.7/skills-linux-amd64.tar.gz"
      sha256 "d3434c48c1de2f219d2afc9c79707e2220b0676a4f7f494df1ed34f7ad5f868e"
    end
  end

  def install
    bin.install Dir["skills-*"].first => "skills"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skills version")
  end
end
