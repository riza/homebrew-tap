class Cocaine < Formula
  desc "Keep your machine awake. Like caffeinate, but with more kick."
  homepage "https://github.com/riza/cocaine"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riza/cocaine/releases/download/v0.2.7/cocaine-aarch64-apple-darwin.tar.gz"
      sha256 "bad61d3a7fcb70fef40ce3bb0b67f6e4461db95662098d093ad15ccdea1c78cf"
    else
      url "https://github.com/riza/cocaine/releases/download/v0.2.7/cocaine-x86_64-apple-darwin.tar.gz"
      sha256 "745a4755677d757fec5958b54794b36a6ecad6cc924ee3817c96e1fdd1216e80"
    end
  end

  def install
    bin.install "cocaine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cocaine --version")
  end
end
