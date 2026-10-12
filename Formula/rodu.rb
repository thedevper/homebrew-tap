class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.5.1/rodu-v0.5.1-darwin-arm64.tar.gz"
      sha256 "c812c0e52da31e551293548b6049748348995c04e1b4999ec0037535c2805405"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.5.1/rodu-v0.5.1-darwin-x64.tar.gz"
      sha256 "397b8f4f79704a65ac277bbc9675eb5ecfb4465295a16479dc66f1fb985db780"
    end
  end

  def install
    bin.install "rodu"
    prefix.install "LICENSE", "NOTICE", "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rodu --version")
  end
end
