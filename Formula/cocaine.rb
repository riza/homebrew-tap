class Cocaine < Formula
  desc "Keep your machine awake. Like caffeinate, but with more kick."
  homepage "https://github.com/riza/cocaine"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riza/cocaine/releases/download/v0.2.2/cocaine-aarch64-apple-darwin.tar.gz"
      sha256 "a4cfb566dbb7f6df76a07750db87c28c8b21b1b872ff0309a72f2487c802ca6d"
    else
      url "https://github.com/riza/cocaine/releases/download/v0.2.2/cocaine-x86_64-apple-darwin.tar.gz"
      sha256 "529dd52e82ef28953eb065d871eb9f62d1fdc212256a3b48ce9550009ab8ab30"
    end
  end

  def install
    bin.install "cocaine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cocaine --version")
  end
end
