class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.2.0/rodu-v0.2.0-darwin-arm64.tar.gz"
      sha256 "70a0ecd3401740fdf5f4e8d9788dcb58d92f69bdd207dae35061996c8b107a16"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.2.0/rodu-v0.2.0-darwin-x64.tar.gz"
      sha256 "96fc0fcc1e07f5865353774b83ef0efb454469d6a02d32337336283dd9e5d194"
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
