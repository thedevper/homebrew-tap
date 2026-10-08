class Shoal < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/shoal"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/shoal/releases/download/v0.1.0/shoal-v0.1.0-darwin-arm64.tar.gz"
      sha256 "0ccbd30aafa10f34fa88e5cd52bce365cc36a4b8d45f3ef248a9f42815f89447"
    end
    on_intel do
      url "https://github.com/TheDevper/shoal/releases/download/v0.1.0/shoal-v0.1.0-darwin-x64.tar.gz"
      sha256 "ec882e44fec7de0c3c5ffd43896dda42b9282743c81abb408c076864508c9395"
    end
  end

  def install
    bin.install "shoal"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shoal --version")
  end
end
