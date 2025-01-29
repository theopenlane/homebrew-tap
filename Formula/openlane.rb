# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.6.20"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.6.20/openlane_0.6.20_darwin_amd64.tar.gz"
      sha256 "0e47576ae6c8bc6c1e91c273c41b4157f9ae6be52805a2c9c5064536cfac838d"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.6.20/openlane_0.6.20_darwin_arm64.tar.gz"
      sha256 "b15ac9a934794f7e7150942cd79b1d7263caa2ed1f108fdef39e3a97964588bf"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.20/openlane_0.6.20_linux_amd64.tar.gz"
        sha256 "b252d41b135a15652cdd1fa3b2b2a3a8700f323869cc0863079872cd03130046"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.20/openlane_0.6.20_linux_arm64.tar.gz"
        sha256 "6aaf020ece208536e73d72a1e8dee197c14c4102ebf40bc443b1107c3d5a638f"

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
