cask "claude-status-bar" do
  version "1.0.0"
  sha256 "094a3b6ef144913457063c32bb248d4f248a646e7e8d3abe7a54cfc08178edc8"

  url "https://github.com/837477/claude-status-bar/releases/download/v#{version}/ClaudeUsageMonitor.dmg"
  name "Claude Usage Monitor"
  desc "macOS menubar app for monitoring Claude Pro/Max subscription usage"
  homepage "https://github.com/837477/claude-status-bar"

  app "Claude Usage Monitor.app"

  zap trash: [
    "~/.claude-usage-monitor",
  ]
end
