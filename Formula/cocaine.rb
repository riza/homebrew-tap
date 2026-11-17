class Cocaine < Formula
  desc "Keep your machine awake. Like caffeinate, but with more kick."
  homepage "https://github.com/riza/cocaine"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riza/cocaine/releases/download/v0.2.8/cocaine-aarch64-apple-darwin.tar.gz"
      sha256 "e18a91b6a79a3c68745c73a69a160c77dd2f2b824d102f513b8ea7e8552c2813"
    else
      url "https://github.com/riza/cocaine/releases/download/v0.2.8/cocaine-x86_64-apple-darwin.tar.gz"
      sha256 "42cf3fc55b61a99e540249ac8d00faed5d58e74dedbe081c699fc084516c7079"
    end
  end

  def install
    bin.install "cocaine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cocaine --version")
  end
end
