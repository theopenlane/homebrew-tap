# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/theopenlane/core/releases/download/v0.3.0/openlane_0.3.0_darwin_amd64.tar.gz"
      sha256 "557cdbc496eb3e7305b36ca88079847aadaebdfbe8fc78a44ccfca74cd31f2de"

      def install
        bin.install "openlane"
      end
    end
    on_arm do
      url "https://github.com/theopenlane/core/releases/download/v0.3.0/openlane_0.3.0_darwin_arm64.tar.gz"
      sha256 "34499a4d63d36c3a8db50d836647d104d1d2b18a6e4eb2dd0789e5675ef06421"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.3.0/openlane_0.3.0_linux_amd64.tar.gz"
        sha256 "1664b4404c9cb6fac94715846cdfcc1f291c19d5febe3803554035ea3caf9766"

        def install
          bin.install "openlane"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.3.0/openlane_0.3.0_linux_arm64.tar.gz"
        sha256 "2f506e6ad08ed584f86da3b13601fb2bfadde01ea76e9624703951e7dbeca0f1"

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
