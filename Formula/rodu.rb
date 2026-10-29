class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.9.0/rodu-v0.9.0-darwin-arm64.tar.gz"
      sha256 "df0fbeb6d1bbb7a0ff4428eeb396a8df9e5241d882eea7badc7c4fff1bb00d76"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.9.0/rodu-v0.9.0-darwin-x64.tar.gz"
      sha256 "b22ecf2aa20a869181566e11ab00f0679b60e1ea3a367d3aa08dd0360d7cc80c"
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
