class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.10.0/rodu-v0.10.0-darwin-arm64.tar.gz"
      sha256 "9a373d837b029b47a24f705fe0e1e644066299c2da4b6607c2e671acba4b3be4"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.10.0/rodu-v0.10.0-darwin-x64.tar.gz"
      sha256 "10e4a65531c5e7e924cc884894ea184e20154f59a911f6e04066268297a3eb9f"
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
