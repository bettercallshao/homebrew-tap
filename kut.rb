# This file was generated by GoReleaser. DO NOT EDIT.
class Kut < Formula
  desc "Run commands more easily"
  homepage "https://github.com/bettercallshao/kut"
  version "0.4.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bettercallshao/kut/releases/download/v0.4.12/kut_0.4.12_darwin_amd64.zip"
    sha256 "cc4b02c3837bcd18574b138323ff4eab77dbb1ad1044850cbb9c1fe2a4c6f34c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bettercallshao/kut/releases/download/v0.4.12/kut_0.4.12_linux_amd64.zip"
      sha256 "959f1bd6ed637d482441dfd391a28c5e01a6aab5564b2d9a6b5850bac9fcaa5b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bettercallshao/kut/releases/download/v0.4.12/kut_0.4.12_linux_arm64.zip"
        sha256 "20efae0d221a1feedc636c4b4d3e7f9836391808333fdfa2c9568a1af79a5341"
      else
        url "https://github.com/bettercallshao/kut/releases/download/v0.4.12/kut_0.4.12_linux_armv6.zip"
        sha256 "b3b012663d965075d2bd6db1197e5b731b0004f4f65b4a069a6e3d25e7405146"
      end
    end
  end

  def install
    bin.install "kut"
    bin.install "kutd"
  end
end