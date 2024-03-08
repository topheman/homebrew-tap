class Snakepipe < Formula
  desc "Snake game based on stdin/stdout in rust"
  homepage "https://github.com/topheman/snake-pipe-rust"
  version "2.0.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.0.0/snakepipe-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b979b5fc4e1cd4a00b1388c86f1edcff3db862158c7df5bfde14da55bfd2ab29"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.0.0/snakepipe-aarch64-apple-darwin.tar.gz"
    sha256 "222afb322c9e9e66840a12a04669654a9fbb0b385ca93f37683057a776d5615c"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/topheman/snake-pipe-rust/releases/download/v2.0.0/snakepipe-x86_64-apple-darwin.tar.gz"
    sha256 "68bd8d16037d859cd0f4016e2fba8aa4695d1e387c52ca2f0c4e8d863ca4e7a3"
  end

  def install
    bin.install "snakepipe"
  end

  test do
    system "#{bin}/snakepipe", "--version"
  end
end
