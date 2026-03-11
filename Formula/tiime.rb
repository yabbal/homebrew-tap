class Tiime < Formula
  desc "CLI & SDK for Tiime accounting - manage your French business accounting from the terminal"
  homepage "https://github.com/yabbal/tiime"
  url "https://registry.npmjs.org/tiime-cli/-/tiime-cli-2.4.0.tgz"
  sha256 "abc1e8b529a89a4649e0c2ec65ead89d5656220fb07c2f667552d9febadc0335"
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
