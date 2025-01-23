# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.6.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.6.11/openlane_0.6.11_darwin_amd64.tar.gz"
      sha256 "6e38cfbe6903a69f8fc3b7a06d7d03783ff912a3936395c77c2b398bba9b51c0"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.6.11/openlane_0.6.11_darwin_arm64.tar.gz"
      sha256 "2e2bb87483db0e9c0ba2154f889e4f54af0a8c162ef68a0f986b67e6b65a0178"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.11/openlane_0.6.11_linux_amd64.tar.gz"
        sha256 "c9d399eb1c3501b8b576dd26b482695715b353ee521028e965dea14d9266364a"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.11/openlane_0.6.11_linux_arm64.tar.gz"
        sha256 "cc360faff7a23b55237e2f353f6700b2f623bfeb88bec96610a7b619a251d7f0"

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
