# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwCli < Formula
  desc "CLI of The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.21.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.0/lorawan-stack-cli_3.21.0_darwin_amd64.tar.gz"
      sha256 "3fe3209f14822f6f237c7b9077d4e881e52ac974b85c6f10929c1c2fbf593fa4"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.0/lorawan-stack-cli_3.21.0_darwin_arm64.tar.gz"
      sha256 "043e6ef7e7978c5db4ff5644d8a112f94d7c725130f395be776ff8027645fb00"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.0/lorawan-stack-cli_3.21.0_linux_armv6.tar.gz"
      sha256 "6cb49e9b7ab7f22a89b40211e7d0dbd05b037c7abbe5fefcadfce7fcca1e55c6"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.0/lorawan-stack-cli_3.21.0_linux_arm64.tar.gz"
      sha256 "e06fd7a9a78e53c521fe78e8f28898222d5f8d2d6f5ccf65eaf1484d55b2808a"

      def install
        bin.install "tti-lw-cli"
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.21.0/lorawan-stack-cli_3.21.0_linux_amd64.tar.gz"
      sha256 "422c0387542f82efae99be1582810903da79f690e1efd65044b1c0268101fe02"

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
