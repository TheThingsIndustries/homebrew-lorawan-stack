# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.10.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.10.0/lorawan-stack-cli_3.10.0_darwin_amd64.tar.gz"
    sha256 "c6740974993234a975d6ab904d78354a7820dc4c6bd174c50ea635a777655d28"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.10.0/lorawan-stack-cli_3.10.0_linux_amd64.tar.gz"
      sha256 "0e9813c5c952725fad85b8e46c61480a2f5af98c39db5c550e3fda93a672ab02"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.10.0/lorawan-stack-cli_3.10.0_linux_arm64.tar.gz"
        sha256 "d565b7670b77dbf62bc68d89b45282b0ffb5eeec5bf109785c3bf0691535cd46"
      else
        url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.10.0/lorawan-stack-cli_3.10.0_linux_armv6.tar.gz"
        sha256 "353872b4006bbebb072b8588ecea3bf16d2e7a9f9ee13f328e97a674c7df453f"
      end
    end
  end
  
  conflicts_with "tti-lw-stack"

  def install
    bin.install "tti-lw-cli"
    bash_completion.install "config/completion/bash/tti-lw-cli"
    zsh_completion.install "config/completion/zsh/_tti-lw-cli"
    fish_completion.install "config/completion/fish/tti-lw-cli.fish"
  end
end
