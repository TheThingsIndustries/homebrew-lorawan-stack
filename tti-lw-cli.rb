# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.9.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.9.1/lorawan-stack-cli_3.9.1_darwin_amd64.tar.gz"
    sha256 "a9d0ddd05f1222337915505023346c4f2ebde5ca67cec77d959cf22956640e48"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.9.1/lorawan-stack-cli_3.9.1_linux_amd64.tar.gz"
      sha256 "6463b38486123826b1135d0e8f97670e6919378cc7eb4f5fce0f9ead3fe9df71"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.9.1/lorawan-stack-cli_3.9.1_linux_arm64.tar.gz"
        sha256 "92b72abeac3cb620214cdeb391b53d15bdbf4d30bef941621aba71c23284eada"
      else
        url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.9.1/lorawan-stack-cli_3.9.1_linux_armv6.tar.gz"
        sha256 "3a499b4118b42be8234632ca2196f8d72ec706f4d4f0d38c96895fdb18e7876d"
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
