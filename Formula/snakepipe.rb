class Snakepipe < Formula
  desc "Snake game based on stdin/stdout in rust"
  homepage "https://github.com/topheman/snake-pipe-rust"
  version "2.1.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.1.0/snakepipe-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "766507e0efe425e765da7c77637d10cff51b73bc53c3c30864a0b2cf19af225d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.1.0/snakepipe-aarch64-apple-darwin.tar.gz"
    sha256 "f39bc0ed69f726e68be5af3789afa7a831390fd2fa4e58b83fa5a91c1d392410"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.1.0/snakepipe-x86_64-apple-darwin.tar.gz"
    sha256 "3850aa0f4ed75bedadbb9c6dfdd7b0d5cc063937a4cd8f65d1cafff75942f945"
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
