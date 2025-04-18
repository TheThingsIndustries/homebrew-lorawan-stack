# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TtiLwStack < Formula
  desc "The Things Stack Enterprise for LoRaWAN"
  homepage "https://www.thethingsindustries.com"
  version "3.34.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.1/lorawan-stack_3.34.1_darwin_amd64.tar.gz"
      sha256 "b35e8db2861a89d79a636be47fb0baeee24e71e0fed552d278acfbd4d29c7776"

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
      url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.1/lorawan-stack_3.34.1_darwin_arm64.tar.gz"
      sha256 "889f7f4daa49cd5b3179c2a3fa2e29cd87defa91fb83239fd71c2a6abd0bb65b"

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
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.1/lorawan-stack_3.34.1_linux_amd64.tar.gz"
        sha256 "3d6439074ce2816c25b3491e623c3e842a561b32868b9bdec6444d300652c16e"

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
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.1/lorawan-stack_3.34.1_linux_armv6.tar.gz"
        sha256 "89a80fbee3a9fdc10b6f4178dc65d1648343f501b6d9ba2fa1150ded3f2b7caf"

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
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://the-things-enterprise-stack-releases.s3-eu-west-1.amazonaws.com/3.34.1/lorawan-stack_3.34.1_linux_arm64.tar.gz"
        sha256 "8bc292cbd18d40bcff35c8bfce71c94b4e4238c0d530315fd76bbd76ee72a9a5"

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
  end

  conflicts_with "tti-lw-cli"
end
