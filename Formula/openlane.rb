# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.8.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.8.11/openlane_0.8.11_darwin_amd64.tar.gz"
      sha256 "7fd7077e8591dc6c3c469c0801ef9a846bfdee984044a7f76a3b65ac7ea7230f"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.8.11/openlane_0.8.11_darwin_arm64.tar.gz"
      sha256 "fe85c9908acbdc6a1bb7371aba62373c5e42a5d6ad9c718f96e9a9a22c87ef19"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.8.11/openlane_0.8.11_linux_amd64.tar.gz"
        sha256 "602c36828bf4772e5bf10c603c8f6a989be88d966b8a0472f599430dc20d4922"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.8.11/openlane_0.8.11_linux_arm64.tar.gz"
        sha256 "bb42f9837eaa4b4c1b5742ac8119f56ed7fa226596ffdaa7c00b5c122a5537e3"

        def install
          bin.install "openlane"
        end
      end
    end
  end

  test do
    system "#{bin}/openlane --help"
  end
end
