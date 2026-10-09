class Rodu < Formula
  desc "Local-first, AI-first kanban for small teams"
  homepage "https://github.com/TheDevper/rodu"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TheDevper/rodu/releases/download/v0.3.0/rodu-v0.3.0-darwin-arm64.tar.gz"
      sha256 "3ff791067be9c22ba3f6f0122ec42879c20d95fe0820c3314663cc4239bfa068"
    end
    on_intel do
      url "https://github.com/TheDevper/rodu/releases/download/v0.3.0/rodu-v0.3.0-darwin-x64.tar.gz"
      sha256 "19c2f792e6dcde62ea0cc52c6ba0090447099cc34cfb1168360deb20ac593bb0"
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
