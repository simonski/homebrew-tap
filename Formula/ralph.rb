class Ralph < Formula
  desc "Loop-driven worker that pulls work from issue trackers and runs coding agents"
  homepage "https://github.com/simonski/ralph"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.0/ralph_0.1.0_darwin_arm64.tar.gz"
      sha256 "2a97bfb606ba666cae395fe091bd202032eebf7e82294c9be6ae86edadcfde11"
    end

    on_intel do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.0/ralph_0.1.0_darwin_amd64.tar.gz"
      sha256 "e5693b86744da46786519ba6479da6c5cb125e8c58ae43fd5f7582dae4f256d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.0/ralph_0.1.0_linux_arm64.tar.gz"
      sha256 "f25f18f31fce819f28364e3c67f14c446f4b788e9887450afdec588fff034466"
    end

    on_intel do
      url "https://github.com/simonski/homebrew-tap/releases/download/ralph-v0.1.0/ralph_0.1.0_linux_amd64.tar.gz"
      sha256 "92cb26958a4d0d07699897e33b94417551255989ced2700824b2bf1fd1575895"
    end
  end

  def install
    bin.install "ralph"
  end

  test do
    assert_match "usage: ralph", shell_output("#{bin}/ralph 2>&1", 1)
  end
end
