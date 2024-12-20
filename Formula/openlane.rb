# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.6.2/openlane_0.6.2_darwin_amd64.tar.gz"
      sha256 "9a640785bcf5eb41179a42374d863901bcdab7cbe5b827f6aca2f852bd50877b"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.6.2/openlane_0.6.2_darwin_arm64.tar.gz"
      sha256 "d0c9a11481229c136e4c2c63528b5cf252fcf6688f14df425e1ab8ddf37ac42e"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.2/openlane_0.6.2_linux_amd64.tar.gz"
        sha256 "05030ede8a349225e41a4b89c5ebb1685c8ec67f54e6c1a0477b430a1d014384"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.2/openlane_0.6.2_linux_arm64.tar.gz"
        sha256 "750fbabaf3054b1dc332fc5937654db7d3aa14507109e6f6618fbcb6ec98f8c5"

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
