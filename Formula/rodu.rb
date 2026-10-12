class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.6.0/rodu-v0.6.0-darwin-arm64.tar.gz"
      sha256 "093275f5497478acc73fb2c68de216030ba1cd529c81696242baf358203aa7cd"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.6.0/rodu-v0.6.0-darwin-x64.tar.gz"
      sha256 "e4a5b375cf6cb32f11398ac48d5a37045a888c95a1b88c7111adb21cc1a75ec2"
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
