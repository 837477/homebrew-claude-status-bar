cask "claude-status-bar" do
  version "1.2.0"
  sha256 "eb50a1abd9e13228cf003a0976c3a6b00dd51d4de02b05074323a53b1296e22b"

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
