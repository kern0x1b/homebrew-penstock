class Penstock < Formula
  desc "Check, lint, lay out, draw and deploy BPMN diagrams from the command line"
  homepage "https://kern0x1b.github.io/penstock-release/"
  url "https://registry.npmjs.org/@kern0x1b/penstock-cli/-/penstock-cli-26.10.2.tgz"
  sha256 "d632881f939a14744b7822eb19f324fcbf8d943bac244a76f914d7f40f45f778"
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
