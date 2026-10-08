class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.2.1/rodu-v0.2.1-darwin-arm64.tar.gz"
      sha256 "8b1192251da1c475e808c37abea28d49ad039b1419d9144c714fed62f6d910db"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.2.1/rodu-v0.2.1-darwin-x64.tar.gz"
      sha256 "5e35d6786ab3a4b9ad2a882bac4c2e08e0a52c8460ea048177987f8881bf4250"
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
