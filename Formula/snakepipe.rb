class Snakepipe < Formula
  desc "Snake game based on stdin/stdout in rust"
  homepage "https://github.com/topheman/snake-pipe-rust"
  version "2.2.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.2.0/snakepipe-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c7534b7eb0fc8723aadb8218b745bf39045dbdcee16f8fd5f88b9bb1f7047913"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.2.0/snakepipe-aarch64-apple-darwin.tar.gz"
    sha256 "9dcc59d568a2f353c0450af9f814895df514c14f722e2b60d266b7a6f9eaffa8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.2.0/snakepipe-x86_64-apple-darwin.tar.gz"
    sha256 "1a3b332429710645a46ff2f7a1d80527938cc0c84050a3ab2b9be7f50a37a665"
  end

  def install
    bin.install "snakepipe"
    bash_completion.install "completions/bash/snakepipe"
    fish_completion.install "completions/fish/snakepipe.fish"
    zsh_completion.install "completions/zsh/_snakepipe"
  end

  test do
    system "#{bin}/snakepipe", "--version"
  end
end
