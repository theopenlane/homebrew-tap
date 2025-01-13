# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.6.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.6.8/openlane_0.6.8_darwin_amd64.tar.gz"
      sha256 "c03ba7631678bb1f71384de7445b5f005e0d1e152bfbfcf31c089a1460d25322"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.6.8/openlane_0.6.8_darwin_arm64.tar.gz"
      sha256 "77aae92ad9622a1416186855f2ccfe9aab4e0db75830036e0d688c7b493ae2ee"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.8/openlane_0.6.8_linux_amd64.tar.gz"
        sha256 "4ac7b8f58bfd0d8d8dea52c5dce62a5f44475c192e84805d774ce32aeeabef76"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.8/openlane_0.6.8_linux_arm64.tar.gz"
        sha256 "59007b31bb68bb0c8defed15e3f6b2999dbd1f5abdda27c0030f3e29c3f4a7c9"

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
