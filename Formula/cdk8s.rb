require "language/node"

class Cdk8s < Formula
  desc "Define k8s native apps and abstractions using object-oriented programming"
  homepage "https://cdk8s.io/"
  url "https://registry.npmjs.org/cdk8s-cli/-/cdk8s-cli-2.0.64.tgz"
  sha256 "ebab1655ceb0573267db51a3fc41bdeb3773721dea78847d1576350a6d5a72ee"
  license "Apache-2.0"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "1b15f727160e8c3c336918fe6e4f978b650ec575cbc2fd30a62eecde1fffeb18"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Cannot initialize a project in a non-empty directory",
      shell_output("#{bin}/cdk8s init python-app 2>&1", 1)
  end
end
