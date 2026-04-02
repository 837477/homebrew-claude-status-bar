cask "claude-status-bar" do
  version "1.4.2"
  sha256 "dc15d29b89946cc419ef937e88598e3eab7339a2b000506fde0081642a848c0f"

  url "https://github.com/837477/claude-status-bar/releases/download/v#{version}/ClaudeUsageMonitor.dmg"
  name "Claude Usage Monitor"
  desc "macOS menubar app for monitoring Claude Pro/Max subscription usage"
  homepage "https://github.com/837477/claude-status-bar"

  app "Claude Usage Monitor.app"
  binary "#{appdir}/Claude Usage Monitor.app/Contents/Resources/bin/claude-status-bar"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Claude Usage Monitor.app"]
  end

  zap trash: [
    "~/.claude-usage-monitor",
  ]
end
