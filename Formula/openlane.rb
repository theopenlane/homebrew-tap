# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.3.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/theopenlane/core/releases/download/v0.3.4/openlane_0.3.4_darwin_amd64.tar.gz"
      sha256 "3a7923faddf6a8ad56905ea771f780730affbf43a42f240051a582a9be9fa31a"

      def install
        bin.install "openlane"
      end
    end
    on_arm do
      url "https://github.com/theopenlane/core/releases/download/v0.3.4/openlane_0.3.4_darwin_arm64.tar.gz"
      sha256 "2c662e1c8cc69b92ee65859b432bd747b72a6f5e37b4f04f7fa741d4b43b66bf"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.3.4/openlane_0.3.4_linux_amd64.tar.gz"
        sha256 "f53b67915d6ab9848156b79edcaeda0628c32badb5584ff5ab2a8bdfc2d680ac"

        def install
          bin.install "openlane"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.3.4/openlane_0.3.4_linux_arm64.tar.gz"
        sha256 "ce4adcfa2c1abe53bb15b34162d8be50055f887ac1d4fa07c33b1e1b698a6f85"

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
