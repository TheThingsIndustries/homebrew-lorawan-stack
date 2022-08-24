# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwCli < Formula
  desc "CLI of The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.21.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.1/lorawan-stack-cli_3.21.1_darwin_amd64.tar.gz"
      sha256 "9587689db981a54a25476ffb1a60727775f2d7806b1c5f296fc19091e2b3f74d"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.1/lorawan-stack-cli_3.21.1_darwin_arm64.tar.gz"
      sha256 "363d8b079165faa299a12813c00908cfe2faaf74a6c041462f85588684e395ac"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.1/lorawan-stack-cli_3.21.1_linux_armv6.tar.gz"
      sha256 "5d4cfa9e21edd099d393471729c91701f5d3e923297bf120d1cacecac07dc74a"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.1/lorawan-stack-cli_3.21.1_linux_amd64.tar.gz"
      sha256 "5b968a8e52ed6dce3ce97d40cf7dfaceb6cca04f5cbdde4c0cda9a40e39c7797"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.1/lorawan-stack-cli_3.21.1_linux_arm64.tar.gz"
      sha256 "cb395d594fc2a0b79bfb41731d178c73e5cb91c27808f0df9deede82e2dcee41"

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
