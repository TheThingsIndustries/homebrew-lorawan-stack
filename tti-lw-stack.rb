# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwStack < Formula
  desc "The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.30.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.30.2/lorawan-stack_3.30.2_darwin_arm64.tar.gz"
      sha256 "e6aace5248c78c1d3e263a6bd8e0932b279b7fee156013946422fb9b69790076"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.30.2/lorawan-stack_3.30.2_darwin_amd64.tar.gz"
      sha256 "3466893ee92c0eaf55650031a434fd163282bf61b2994dbb08e2b65378501c61"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.30.2/lorawan-stack_3.30.2_linux_armv6.tar.gz"
      sha256 "8b9955c8f799b66eca10340c0741583d62a53b25d2bd36a5158b2a15c3148bd5"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.30.2/lorawan-stack_3.30.2_linux_amd64.tar.gz"
      sha256 "a6c39135b98924062851e247b2921d291f91e5e5529660f09a87a24d2bfb3349"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.30.2/lorawan-stack_3.30.2_linux_arm64.tar.gz"
      sha256 "0e85532c7b083445663a2a4e1cef7f9807e65496c24d7bf28c82e6c9b9bf2aac"

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
