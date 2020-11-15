# This file was generated by GoReleaser. DO NOT EDIT.
class Kut < Formula
  desc "Run commands more easily."
  homepage "https://github.com/bettercallshao/kut"
  version "0.4.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bettercallshao/kut/releases/download/v0.4.11/kut_0.4.11_darwin_amd64.zip"
    sha256 "c95e17f40535a91e82aa4848e5c98eaaa45e3d8bfdff25bc927c3f0399df39ad"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bettercallshao/kut/releases/download/v0.4.11/kut_0.4.11_linux_amd64.zip"
      sha256 "ce481d44d6b0c148b82d57a84894309acce4e44e97caa2aba854fe09d822e9ec"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bettercallshao/kut/releases/download/v0.4.11/kut_0.4.11_linux_arm64.zip"
        sha256 "ccfc6b189e582ef0c89d8a703f06c28062478d30a8d9236c4761bdd8430020ca"
      else
        url "https://github.com/bettercallshao/kut/releases/download/v0.4.11/kut_0.4.11_linux_armv6.zip"
        sha256 "8e02216b67aabd5a0b6e8a15d92dea59e0d58bdc745b61f11dae1f0b96185a6d"
      end
    end
  end

  def install
    bin.install "kut"
    bin.install "kutd"
  end
end
