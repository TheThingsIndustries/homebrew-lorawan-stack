# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwStack < Formula
  desc "The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.18.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.18.2/lorawan-stack_3.18.2_darwin_arm64.tar.gz"
      sha256 "3e0fae2ba98fa80dde03b78b034107885b3bef422f971b54b5bfaae49a15adc7"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.18.2/lorawan-stack_3.18.2_darwin_amd64.tar.gz"
      sha256 "42add76548b090d18507db3d234d82e587574e063671c209e9839173cb3906bc"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.18.2/lorawan-stack_3.18.2_linux_arm64.tar.gz"
      sha256 "309cca5cf58f8648a63ceedd922226a8008a4dab227fb42e318e07cb655d3f8c"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.18.2/lorawan-stack_3.18.2_linux_amd64.tar.gz"
      sha256 "7322594d44a8aa9a06321a511f384c813039a0448daf62a1dba6113fc6e80119"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.18.2/lorawan-stack_3.18.2_linux_armv6.tar.gz"
      sha256 "40ea393dac9c72d1e9d2491af1fc9bfe2d76a7aa90eabd02afa0aec0af1608e8"

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
