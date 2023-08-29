# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwCli < Formula
  desc "CLI of The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.27.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.27.1/lorawan-stack-cli_3.27.1_darwin_amd64.tar.gz"
      sha256 "ef0872dba51084af61c7cc8032f547d3ff2f256e1dc52d35baca72b891847c34"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.27.1/lorawan-stack-cli_3.27.1_darwin_arm64.tar.gz"
      sha256 "3bdd13827945f5064430f53af27577e7f3deb853023f0264f8a41271d6fb92bf"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.27.1/lorawan-stack-cli_3.27.1_linux_armv6.tar.gz"
      sha256 "0c6c608829b79a6dc4f93284d71eb311407c6880054bc82c5bef5a65ea92fb78"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.27.1/lorawan-stack-cli_3.27.1_linux_arm64.tar.gz"
      sha256 "918754babcceb7b00540fbfa4e3d37fbd06fe0bb93f9b0c1fc7d823ed4192cb3"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.27.1/lorawan-stack-cli_3.27.1_linux_amd64.tar.gz"
      sha256 "ae98b07fc800fe9777e85e457bc30823651be5ebbc10f9150737ff6f8dd7d8bb"

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
