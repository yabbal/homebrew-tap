class Tiime < Formula
  desc "CLI & SDK for Tiime accounting - manage your French business accounting from the terminal"
  homepage "https://github.com/yabbal/tiime"
  url "https://registry.npmjs.org/tiime-cli/-/tiime-cli-2.2.0.tgz"
  sha256 "12d84deaee2b191a7da75af8ae35f708dce6c533e9d2921cd6f77414656ac698"
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
