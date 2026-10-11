class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.4.0/rodu-v0.4.0-darwin-arm64.tar.gz"
      sha256 "90179943a0edc67037d76f3f19fcca286d618e720f5f7fb9e157181695ee96f9"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.4.0/rodu-v0.4.0-darwin-x64.tar.gz"
      sha256 "5e8e730f041dc9afa9f9f41c942e72b9f63350b93270b4d199f558c478c3f6ad"
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
