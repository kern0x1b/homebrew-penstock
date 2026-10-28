class Penstock < Formula
  desc "Check, lint, lay out, draw and deploy BPMN diagrams from the command line"
  homepage "https://kern0x1b.github.io/penstock-release/"
  url "https://registry.npmjs.org/@kern0x1b/penstock-cli/-/penstock-cli-26.10.6.tgz"
  sha256 "5887c63646d8c9a69a00f43d8906014a6827f9090acd42b356965e125195384d"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/penstock --version")
  end
end
