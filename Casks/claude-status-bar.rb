cask "claude-status-bar" do
  version "1.1.0"
  sha256 "248eb032d005989baa35c33c12a3b77754bb50c5f9869942c0ca452bc9bbd171"

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
