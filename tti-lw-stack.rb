# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwStack < Formula
  desc "The Things Stack for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.2.2/lorawan-stack_3.2.2_darwin_amd64.tar.gz"
    sha256 "4583d3dc40831f8f94146f3b7de2636745d3e6351beab52de426d8eda78acc76"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.2.2/lorawan-stack_3.2.2_linux_amd64.tar.gz"
      sha256 "572fdd68f367e2c673ed7b4a48166d86940c2bd4bcc3d8eefe5a16b6ba69e216"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.2.2/lorawan-stack_3.2.2_linux_arm64.tar.gz"
        sha256 "42cbc06482b9addcd507402c91246cfb4d7348890bf88883cb95ea357928ea3c"
      else
        url "https://github.com/TheThingsIndustries/lorawan-stack/releases/download/v3.2.2/lorawan-stack_3.2.2_linux_armv6.tar.gz"
        sha256 "9a49d6870c8021bfcf9430e9decfe8f251842d3dc2161445f9976199df6931d9"
      end
    end
  end
  
  conflicts_with "tti-lw-cli"

  def install
    bin.install "tti-lw-cli"
    libexec.install %w[tti-lw-stack public doc]
    env = {
        :TTN_LW_HTTP_STATIC_SEARCH_PATH => libexec/"public"
    }
    (bin/"tti-lw-stack").write_env_script libexec/"tti-lw-stack", env
  end
end
