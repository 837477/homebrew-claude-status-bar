cask "claude-status-bar" do
  version "1.3.0"
  sha256 "f6c22fd9150c23d8b55b38ea95608c182359f80e2a8ca77dd9b3cb70db541f34"

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
