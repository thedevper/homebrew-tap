class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.7.0/rodu-v0.7.0-darwin-arm64.tar.gz"
      sha256 "2b671d051ef8ca993dac7c9c45318c020b2ab2117d7a3a8a9790bf5092acf635"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.7.0/rodu-v0.7.0-darwin-x64.tar.gz"
      sha256 "9bc8e6c9fad3974cd5e258099d20f3f85f4194051bc1941dafd04bf7e09703b4"
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
