class Ralph < Formula
  desc "Loop-driven worker that pulls work from issue trackers and runs coding agents"
  homepage "https://github.com/simonski/ralph"
  version "0.1.1779905429"

  on_macos do
    on_arm do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.1779905429/ralph_0.1.1779905429_darwin_arm64.tar.gz"
      sha256 "62762bd8e10ffd1b97fec3ce30dce24004bf72ec1c67dffbf9ee8e2ce79d7b2c"
    end

    on_intel do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.1779905429/ralph_0.1.1779905429_darwin_amd64.tar.gz"
      sha256 "a515f9ece3b2b6fb811eaf7f1527b52281a1e17281e5d7e2d81e870c0413e256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.1779905429/ralph_0.1.1779905429_linux_arm64.tar.gz"
      sha256 "3d6c892aff2dfe4988b935ed59fa7ae8d8a05a45e8ef3f7386843a034cc01b1f"
    end

    on_intel do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.1779905429/ralph_0.1.1779905429_linux_amd64.tar.gz"
      sha256 "40c4cc48889c40d063f709684d659c53fad39b6e98fc3f9d360821a4fe0d1140"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph version")
  end
end
