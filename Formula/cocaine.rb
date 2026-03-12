class Cocaine < Formula
  desc "Keep your machine awake. Like caffeinate, but with more kick."
  homepage "https://github.com/riza/cocaine"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riza/cocaine/releases/download/v0.2.5/cocaine-aarch64-apple-darwin.tar.gz"
      sha256 "6d06be3daead2522001cf3a3ff1e57d2231ef65d79b972e9c68648e49ff1b88a"
    else
      url "https://github.com/riza/cocaine/releases/download/v0.2.5/cocaine-aarch64-apple-darwin.tar.gz"
      sha256 "6d06be3daead2522001cf3a3ff1e57d2231ef65d79b972e9c68648e49ff1b88a"
    end
  end

  def install
    bin.install "cocaine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cocaine --version")
  end
end
