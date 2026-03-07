class Tiime < Formula
  desc "CLI & SDK for Tiime accounting - manage your French business accounting from the terminal"
  homepage "https://github.com/yabbal/tiime-cli"
  url "https://registry.npmjs.org/tiime-cli/-/tiime-cli-1.1.1.tgz"
  sha256 "9b230e27f3b0db1b246428a9b458cabc36ed132daa24d8e008b78e1b606564a9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tiime version")
  end
end
