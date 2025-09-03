class Pluginlab < Formula
  desc "Terminal REPL with sandboxed multi-language plugin system - unified codebase runs in CLI (Rust) and web (TypeScript)"
  homepage "https://github.com/topheman/webassembly-component-model-experiments"
  version "pluginlab@0.6.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0/pluginlab-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1b91c16e699098b46fc0ca8f0ebc2af5d18651fa0e10de85ea5b36626b8d3af2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0/pluginlab-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d0d0c27261805fc7ffffbe770385f9937145e475359a317ec46952017d8c1e5e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0/pluginlab-aarch64-apple-darwin.tar.gz"
    sha256 "817dfbf07fcaab37de8cf0a1a70cb693d0fdfd4a3ebc45d42b147c384ad4b756"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/webassembly-component-model-experiments/releases/download/pluginlab@0.6.0/pluginlab-x86_64-apple-darwin.tar.gz"
    sha256 "6b2c9ff864cf539c1d054b7cfd78216c5caaa25735b23e9d5e4c5463d4f403d1"
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