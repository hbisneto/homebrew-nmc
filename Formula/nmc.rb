class Nmc < Formula
  include Language::Python::Virtualenv

  desc "Automatic cleanup of forgotten node_modules directories"
  homepage "https://github.com/hbisneto/NodeModulesCleaner"
  url "https://github.com/hbisneto/NodeModulesCleaner/archive/refs/tags/v1.0.0.1.tar.gz"
  sha256 "89acf5c029f02996f9ccae2ab0b364bb7c664ae4430a94773ff6ab31338d85c7"
  license "MIT"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/nmc", "--help"
  end
end