class Shoal < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/shoal"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/shoal/releases/download/v0.1.1/shoal-v0.1.1-darwin-arm64.tar.gz"
      sha256 "3a09823af5cf27e12c83f67c7fbec2454939724627e85443fc8113fc9c3de4c6"
    end
    on_intel do
      url "https://github.com/TheDevper/shoal/releases/download/v0.1.1/shoal-v0.1.1-darwin-x64.tar.gz"
      sha256 "f9c7fe0d5879adddb59fabce196a1797dd8c8949e9f5f12ce6d5249c2ac8c64a"
    end
  end

  def install
    bin.install "shoal"
    prefix.install "LICENSE", "NOTICE", "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shoal --version")
  end
end
