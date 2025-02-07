# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.6.23"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.6.23/openlane_0.6.23_darwin_amd64.tar.gz"
      sha256 "37677f880c9a50bbbf4549e3165b804b3912f55324f27454ce7d126ff5a338af"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.6.23/openlane_0.6.23_darwin_arm64.tar.gz"
      sha256 "efcdc2121169e732214d343380de2252a7d79e4b0f64de7a5796c6c84510e67e"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.23/openlane_0.6.23_linux_amd64.tar.gz"
        sha256 "55e92b40950b492f489cc1d8676645e097b36ede3278bbe86e3b36e3b2fa096a"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.23/openlane_0.6.23_linux_arm64.tar.gz"
        sha256 "97cf7711d5adacac192eb5786c1b3b3de16d00f6ffd433624adb1422178f6c9a"

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
