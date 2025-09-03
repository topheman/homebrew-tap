class Pluginlab < Formula
  desc "Terminal REPL with sandboxed multi-language plugin system - unified codebase runs in CLI (Rust) and web (TypeScript)"
  homepage "https://github.com/topheman/webassembly-component-model-experiments"
  version "pluginlab@0.6.0-alpha.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0-alpha.1/pluginlab-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "916ffeaca461e01acb96ac57d365db3677e42900ce5795fe8d4a492621862387"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0-alpha.1/pluginlab-aarch64-apple-darwin.tar.gz"
    sha256 "4cf7d46f513c5d0a337a1abbfa2e7dfc24a82f2534ff03b1b074caa7d6396920"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0-alpha.1/pluginlab-x86_64-apple-darwin.tar.gz"
    sha256 "5d511697f89f67798dab4b7f6026dd1408fdc7507f623337b859a82b2a4f5cbf"
  end

  def install
    bin.install "pluginlab"
    bash_completion.install "completions/bash/pluginlab"
    fish_completion.install "completions/fish/pluginlab.fish"
    zsh_completion.install "completions/zsh/_pluginlab"
  end

  test do
    system "#{bin}/pluginlab", "--version"
  end
end