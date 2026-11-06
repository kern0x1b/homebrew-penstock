class Penstock < Formula
  desc "Check, lint, lay out, draw and deploy BPMN diagrams from the command line"
  homepage "https://kern0x1b.github.io/penstock-release/"
  url "https://registry.npmjs.org/@kern0x1b/penstock-cli/-/penstock-cli-26.11.1.tgz"
  sha256 "69960d0bc8125442fada7dcf97e9f68d027552f3911148c4dfe98564c451172d"
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
