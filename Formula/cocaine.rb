class Cocaine < Formula
  desc "Keep your machine awake. Like caffeinate, but with more kick."
  homepage "https://github.com/riza/cocaine"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riza/cocaine/releases/download/v0.2.6/cocaine-aarch64-apple-darwin.tar.gz"
      sha256 "276bc225fd62a6ea6aa7f8e16060be2a7bf604642f2a4e2746d51e1485b3e05a"
    else
      url "https://github.com/riza/cocaine/releases/download/v0.2.6/cocaine-x86_64-apple-darwin.tar.gz"
      sha256 "9995cb350cedcbb4b532c7fba0ae267202dfd8979356edf980584c39a13e11a2"
    end
  end

  def install
    bin.install "cocaine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cocaine --version")
  end
end
