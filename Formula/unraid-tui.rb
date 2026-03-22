class UnraidTui < Formula
  desc "Terminal UI for monitoring and managing Unraid servers"
  homepage "https://github.com/Greite/unraid-tui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Greite/unraid-tui/releases/download/v#{version}/unraid-tui_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/Greite/unraid-tui/releases/download/v#{version}/unraid-tui_#{version}_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Greite/unraid-tui/releases/download/v#{version}/unraid-tui_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/Greite/unraid-tui/releases/download/v#{version}/unraid-tui_#{version}_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "unraid-tui"
  end

  test do
    system bin/"unraid-tui", "--help"
  end
end
