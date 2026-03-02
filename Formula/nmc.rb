class Nmc < Formula
  include Language::Python::Virtualenv

  desc "Automatic cleanup of forgotten node_modules directories"
  homepage "https://github.com/hbisneto/NodeModulesCleaner"
  url "https://github.com/hbisneto/NodeModulesCleaner/archive/refs/tags/v1.0.0.1.tar.gz"
  sha256 "89acf5c029f02996f9ccae2ab0b364bb7c664ae4430a94773ff6ab31338d85c7"
  license "MIT"

  depends_on "python@3.10"

  resource "filesystempro" do
    url "https://files.pythonhosted.org/packages/source/f/filesystempro/filesystempro-3.0.0.0.tar.gz"
    sha256 "9ffc4cf0c6c5192280b8cd8cd1504a85fbb5c0fafd36faa7cfc9207e98b8da49"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/nmc", "--help"
  end
end