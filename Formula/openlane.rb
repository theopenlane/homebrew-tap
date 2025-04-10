# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.8.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.8.12/openlane_0.8.12_darwin_amd64.tar.gz"
      sha256 "99d94e486959655e8003b4d07698c920d8494457079a3f06efa500ef509bda48"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.8.12/openlane_0.8.12_darwin_arm64.tar.gz"
      sha256 "27fa280d3f80cfe135a692b5e53b8cf9068c9533ff48f22dc41dd57c4f040588"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.8.12/openlane_0.8.12_linux_amd64.tar.gz"
        sha256 "8ffc899ba5c8e712b97db40338627c0f544606827e472cf2e1b362b1d870c182"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.8.12/openlane_0.8.12_linux_arm64.tar.gz"
        sha256 "e701c6a5065dfb28e95689a038a7e6ed0eef7dc38d09cc1be3ddc4e17957cee2"

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
