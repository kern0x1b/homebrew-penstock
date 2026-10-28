class Penstock < Formula
  desc "Check, lint, lay out, draw and deploy BPMN diagrams from the command line"
  homepage "https://kern0x1b.github.io/penstock-release/"
  url "https://registry.npmjs.org/@kern0x1b/penstock-cli/-/penstock-cli-26.10.5.tgz"
  sha256 "cf1386eeae74fb93142bcea3550ebbc92981bc4a5d13f4a1fb03cdc28bf07a4d"
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
