# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwCli < Formula
  desc "CLI of The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.23.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.23.0/lorawan-stack-cli_3.23.0_darwin_amd64.tar.gz"
      sha256 "937f0c52c784e38609011808fa3e21e6f4c60ca056b3c8e75d769484bc5d380b"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.23.0/lorawan-stack-cli_3.23.0_darwin_arm64.tar.gz"
      sha256 "8792889225d24a4a3932e3a4bcdfe006df634fed6c087c0b0e282628f0374a68"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.23.0/lorawan-stack-cli_3.23.0_linux_arm64.tar.gz"
      sha256 "de93d5d1ed69aad5e024a3878835663a5a632edfd18115402849c15a05bb762b"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.23.0/lorawan-stack-cli_3.23.0_linux_armv6.tar.gz"
      sha256 "e733566e9193ece2a9bed6def805f3d2c1d197980d7f76e1f67a1f07cfe2a6d8"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.23.0/lorawan-stack-cli_3.23.0_linux_amd64.tar.gz"
      sha256 "1790310229da6ea8f709b561053877893b9b625798c38e60857ee31d906b567a"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
  end

  conflicts_with "tti-lw-stack"
end
