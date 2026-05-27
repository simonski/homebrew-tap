class Ralph < Formula
  desc "Loop-driven worker that pulls work from issue trackers and runs coding agents"
  homepage "https://github.com/simonski/ralph"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.1/ralph_0.1.1_darwin_arm64.tar.gz"
      sha256 "b53272192f3c0cc33d4e613067028f603cd032dc17d2cf522c8ae2263a6d5bcc"
    end

    on_intel do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.1/ralph_0.1.1_darwin_amd64.tar.gz"
      sha256 "af246fbf4f411cf81a3add88a6e7861bb700c6471f2b738aec2fdf8861db7a23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.1/ralph_0.1.1_linux_arm64.tar.gz"
      sha256 "2280cfecc0116ac575b45fb413003ac4b9aa162390fb6d0265a4054c7808e591"
    end

    on_intel do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.1/ralph_0.1.1_linux_amd64.tar.gz"
      sha256 "9f1946021d8add8471a3d1247c9796d1572f25f57c60ee074fa6b2c61e130ef7"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph version")
  end
end
