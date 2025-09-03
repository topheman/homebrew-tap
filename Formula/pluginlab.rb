class Pluginlab < Formula
  desc "Terminal REPL with sandboxed multi-language plugin system - unified codebase runs in CLI (Rust) and web (TypeScript)"
  homepage "https://github.com/topheman/webassembly-component-model-experiments"
  version "pluginlab@0.6.0-alpha.3"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0-alpha.3/pluginlab-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "f19ea54bae11ce734b4821f80ea2d4621215462c585926795b93b698bb4916f6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0-alpha.3/pluginlab-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6ab86bb3dc69056e765b03621cc7a5e54b6f08771093197457603566b4c7c513"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0-alpha.3/pluginlab-aarch64-apple-darwin.tar.gz"
    sha256 "5dd9c4b75b8705ab9b7f2c326d5475fbaee18bef885c161f3752863fb385a347"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0-alpha.3/pluginlab-x86_64-apple-darwin.tar.gz"
    sha256 "377355882c3220f32769a9d8a3722ae3aebd6cbb73f6713f219dafe655002703"
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