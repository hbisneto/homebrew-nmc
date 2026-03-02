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

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/source/c/certifi/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/source/i/idna/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/nmc", "--help"
  end
end