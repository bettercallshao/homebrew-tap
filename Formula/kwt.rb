# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kwt < Formula
  desc "Run commands easily"
  homepage "https://github.com/bettercallshao/kwt"
  version "0.5.7"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/bettercallshao/kwt/releases/download/v0.5.7/kwt_0.5.7_darwin_amd64.zip"
    sha256 "1383130e9037e020dda304e52aaebae16aac88b20e8bb165e81cdd7ba7ca1b45"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bettercallshao/kwt/releases/download/v0.5.7/kwt_0.5.7_linux_amd64.zip"
    sha256 "b53a990065e03ef83c0987e63042127be9e659fd74e391ee5e5c108c5df6dd2e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/bettercallshao/kwt/releases/download/v0.5.7/kwt_0.5.7_linux_armv6.zip"
    sha256 "667a8dbda2a73ec132b0d7ddea342e6b7539c9d1c5e8c3f0de311b609c2315e0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/bettercallshao/kwt/releases/download/v0.5.7/kwt_0.5.7_linux_arm64.zip"
    sha256 "963f8edf7524f6e60a57aa56cd9968134aed8fceb300d99a007373b6ae243891"
  end

  def install
    bin.install "kwt"
  end
end
