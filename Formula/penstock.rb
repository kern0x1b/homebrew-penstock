class Penstock < Formula
  desc "Check, lint, lay out, draw and deploy BPMN diagrams from the command line"
  homepage "https://kern0x1b.github.io/penstock-release/"
  url "https://registry.npmjs.org/@kern0x1b/penstock-cli/-/penstock-cli-26.11.0.tgz"
  sha256 "5f601093ab1215f5e57d5fe2dee06626d5ea1888331197f3479741800aa65823"
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
