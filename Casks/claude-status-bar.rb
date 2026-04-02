cask "claude-status-bar" do
  version "1.4.1"
  sha256 "3c7c2650be50c62626dfc15877b69f72f3bbe527556bc6fa5327a77f69e0d578"

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
