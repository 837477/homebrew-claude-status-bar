cask "claude-status-bar" do
  version "1.1.0"
  sha256 "2791d5e0f76fff3c94851d74372e6ad841904ba2dfb6f97ce9efe0d2900c5b43"

  url "https://github.com/837477/claude-status-bar/releases/download/v#{version}/ClaudeUsageMonitor.dmg"
  name "Claude Usage Monitor"
  desc "macOS menubar app for monitoring Claude Pro/Max subscription usage"
  homepage "https://github.com/837477/claude-status-bar"

  app "Claude Usage Monitor.app"
  binary "#{appdir}/Claude Usage Monitor.app/Contents/Resources/bin/claude-status-bar"

  zap trash: [
    "~/.claude-usage-monitor",
  ]
end
