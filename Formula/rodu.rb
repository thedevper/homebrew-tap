class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.5.0/rodu-v0.5.0-darwin-arm64.tar.gz"
      sha256 "05e469287735471dbe2c04001b0801008087e329a52c5141d569ffe6d0b62fd8"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.5.0/rodu-v0.5.0-darwin-x64.tar.gz"
      sha256 "bb55035b555b6d0e8a42c8e6043d963e9cb2ab1067507b79e9fccbaf8ec98307"
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
