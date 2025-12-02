class Snakepipe < Formula
  desc "Snake game based on stdin/stdout in rust"
  homepage "https://github.com/topheman/snake-pipe-rust"
  version "v2.2.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.2.1/snakepipe-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "802132de5485ca61007daaf380605e99e02de9577580571f82cdc370e31007ce"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.2.1/snakepipe-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "48f754fcc2f594bd33c375336b912b3f73b1cbf22fccfa94dcf8d3d83398f795"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.2.1/snakepipe-aarch64-apple-darwin.tar.gz"
    sha256 "55c132b232d453a340a496f67714a3e37f77f4d931c33d653921ea9599400dc3"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.2.1/snakepipe-x86_64-apple-darwin.tar.gz"
    sha256 "9ee9bc1e7c9eee63deb202a26eabfa42b334102e356d67f76f4da7a0d660f8a5"
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