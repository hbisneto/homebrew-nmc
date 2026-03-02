class Nmc < Formula
  desc "Automatic cleanup of forgotten node_modules directories"
  homepage "https://github.com/hbisneto/NodeModulesCleaner"
  url "https://github.com/hbisneto/NodeModulesCleaner/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "89acf5c029f02996f9ccae2ab0b364bb7c664ae4430a94773ff6ab31338d85c7"
  license "MIT"

  depends_on "python@3.10"

  def install
    system "python3", "-m", "pip", "install", ".", "--prefix=#{prefix}", "--no-deps", "--ignore-installed"
  end

  test do
    system "#{bin}/nmc", "--help"
  end
end