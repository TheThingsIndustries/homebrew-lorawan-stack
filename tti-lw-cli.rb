# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwCli < Formula
  desc "CLI of The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.34.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.0/lorawan-stack-cli_3.34.0_darwin_arm64.tar.gz"
      sha256 "3ee6f573e77b40c37674abe3485de5fbb523c22b3032a6351696b280a62ebc84"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.0/lorawan-stack-cli_3.34.0_darwin_amd64.tar.gz"
      sha256 "0b6779f543c12d68ab5789c5de6c0516629683c8d06a7877846c13127716d6e8"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.0/lorawan-stack-cli_3.34.0_linux_amd64.tar.gz"
      sha256 "5833711568251a1e4d81dae2a1f23613b5636f116cc1abeb5eaa55925e7f51a6"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.0/lorawan-stack-cli_3.34.0_linux_armv6.tar.gz"
      sha256 "2ce0b4bf7d113f5832ed7883e81efb89cd28e97c95d2aa9794460b5ffd3f3714"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.0/lorawan-stack-cli_3.34.0_linux_arm64.tar.gz"
      sha256 "4e21e1fc9c8e772584f1f40766d6e63d7282de5237666623cf496c3543465803"

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
