# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwStack < Formula
  desc "The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.32.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.32.1/lorawan-stack_3.32.1_darwin_arm64.tar.gz"
      sha256 "71035c618afcfff9d85c66d8f43bc32b66289e7aa950292c238df37ffa7f0828"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.32.1/lorawan-stack_3.32.1_darwin_amd64.tar.gz"
      sha256 "b3d86f9fa30a7e2eccf4e066de5de8d9e51a0f38c171ca09a7db62d1045130a9"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.32.1/lorawan-stack_3.32.1_linux_arm64.tar.gz"
      sha256 "14878218e22ce9334ea652da5f0ab64ea2420abc61f7560f25efeb2b011a9d0c"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.32.1/lorawan-stack_3.32.1_linux_armv6.tar.gz"
      sha256 "ea7277c4b89059d1a9ce4fd7d411707af79710d69e23a09cbb87f4da3d03e17f"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.32.1/lorawan-stack_3.32.1_linux_amd64.tar.gz"
      sha256 "d392b1cd9414ab306b438f99991bf98e687ef0ea32e164d7907dc9c1c27bc586"

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
