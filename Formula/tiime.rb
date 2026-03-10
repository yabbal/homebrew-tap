class Tiime < Formula
  desc "CLI & SDK for Tiime accounting - manage your French business accounting from the terminal"
  homepage "https://github.com/yabbal/tiime"
  url "https://registry.npmjs.org/tiime-cli/-/tiime-cli-2.1.1.tgz"
  sha256 "672c4c34c327c19acb724d2e1e8e4a645f59d060b267c01bf2f053d2978c9d99"
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
