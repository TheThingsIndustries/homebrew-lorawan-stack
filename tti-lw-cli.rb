# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.12.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.12.0/lorawan-stack-cli_3.12.0_darwin_amd64.tar.gz"
    sha256 "6555592821d4e2b3f792ccc12c97db71c73f7e6e2a5ecc9dcc7e734356856a55"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.12.0/lorawan-stack-cli_3.12.0_darwin_arm64.tar.gz"
    sha256 "2014fe4bd5410b49fe3a969d52f7e15f73ec00de1ac34fc0c9a0a6d3f8c70f49"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.12.0/lorawan-stack-cli_3.12.0_linux_amd64.tar.gz"
    sha256 "a2aa0efcd1f33badb1ebcb9f85c63c6a4e2457cc8adab62d46c63a69e42a7ba2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.12.0/lorawan-stack-cli_3.12.0_linux_armv6.tar.gz"
    sha256 "34b210d1fa4e47a3563168f6a9e15f0df9dc23c3a7b739baac961649f0acb865"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.12.0/lorawan-stack-cli_3.12.0_linux_arm64.tar.gz"
    sha256 "856d34ed0212a99b2f21304e4467df07330e2df78b4cd81e5896edce26785508"
  end

  conflicts_with "tti-lw-stack"

  def install
    bin.install "tti-lw-cli"
    bash_completion.install "config/completion/bash/tti-lw-cli"
    zsh_completion.install "config/completion/zsh/_tti-lw-cli"
    fish_completion.install "config/completion/fish/tti-lw-cli.fish"
  end
end
