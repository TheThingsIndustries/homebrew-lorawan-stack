# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwStack < Formula
  desc "The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.16.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.16.3/lorawan-stack_3.16.3_darwin_amd64.tar.gz"
      sha256 "fef92a3f1002b11a5cd6bc18ae9cd0ad5286b9273db970ba9e0d8b46c71f4b78"

      def install
        bin.install "tti-lw-cli"
        libexec.install %w[tti-lw-stack public]
        env = {
            :TTN_LW_HTTP_STATIC_SEARCH_PATH => libexec/"public"
        }
        (bin/"tti-lw-stack").write_env_script libexec/"tti-lw-stack", env
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
        bash_completion.install "config/completion/bash/tti-lw-stack"
        zsh_completion.install "config/completion/zsh/_tti-lw-stack"
        fish_completion.install "config/completion/fish/tti-lw-stack.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.16.3/lorawan-stack_3.16.3_darwin_arm64.tar.gz"
      sha256 "d4dbc7067152bb28b1d597a390d62813469d5adf869a3fd214781ba4596bcf7f"

      def install
        bin.install "tti-lw-cli"
        libexec.install %w[tti-lw-stack public]
        env = {
            :TTN_LW_HTTP_STATIC_SEARCH_PATH => libexec/"public"
        }
        (bin/"tti-lw-stack").write_env_script libexec/"tti-lw-stack", env
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
        bash_completion.install "config/completion/bash/tti-lw-stack"
        zsh_completion.install "config/completion/zsh/_tti-lw-stack"
        fish_completion.install "config/completion/fish/tti-lw-stack.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.16.3/lorawan-stack_3.16.3_linux_arm64.tar.gz"
      sha256 "6bdeb5688d4ce3931fc1113a816230830c51e48f5ca1057c7bdef590562752b7"

      def install
        bin.install "tti-lw-cli"
        libexec.install %w[tti-lw-stack public]
        env = {
            :TTN_LW_HTTP_STATIC_SEARCH_PATH => libexec/"public"
        }
        (bin/"tti-lw-stack").write_env_script libexec/"tti-lw-stack", env
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
        bash_completion.install "config/completion/bash/tti-lw-stack"
        zsh_completion.install "config/completion/zsh/_tti-lw-stack"
        fish_completion.install "config/completion/fish/tti-lw-stack.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.16.3/lorawan-stack_3.16.3_linux_armv6.tar.gz"
      sha256 "301889b19c7a89e55f356c934463babb85b1a520ea98e223fab52724905b3657"

      def install
        bin.install "tti-lw-cli"
        libexec.install %w[tti-lw-stack public]
        env = {
            :TTN_LW_HTTP_STATIC_SEARCH_PATH => libexec/"public"
        }
        (bin/"tti-lw-stack").write_env_script libexec/"tti-lw-stack", env
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
        bash_completion.install "config/completion/bash/tti-lw-stack"
        zsh_completion.install "config/completion/zsh/_tti-lw-stack"
        fish_completion.install "config/completion/fish/tti-lw-stack.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.16.3/lorawan-stack_3.16.3_linux_amd64.tar.gz"
      sha256 "a5b6f39f695eb7f0c77e28bd6c0a1657a8b23ba0faec8349f4ead5382ad64068"

      def install
        bin.install "tti-lw-cli"
        libexec.install %w[tti-lw-stack public]
        env = {
            :TTN_LW_HTTP_STATIC_SEARCH_PATH => libexec/"public"
        }
        (bin/"tti-lw-stack").write_env_script libexec/"tti-lw-stack", env
        bash_completion.install "config/completion/bash/tti-lw-cli"
        zsh_completion.install "config/completion/zsh/_tti-lw-cli"
        fish_completion.install "config/completion/fish/tti-lw-cli.fish"
        bash_completion.install "config/completion/bash/tti-lw-stack"
        zsh_completion.install "config/completion/zsh/_tti-lw-stack"
        fish_completion.install "config/completion/fish/tti-lw-stack.fish"
      end
    end
  end

  conflicts_with "tti-lw-cli"
end
