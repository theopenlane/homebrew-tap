# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.7.0/openlane_0.7.0_darwin_amd64.tar.gz"
      sha256 "0eebbb12ef5f0e01be69643e56235b4617f9ca685ec55324e956c39daac368bd"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.7.0/openlane_0.7.0_darwin_arm64.tar.gz"
      sha256 "d99c325ad4cad74b4595a604d67778f9349c64c3013086f7c967b873fc89e027"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.7.0/openlane_0.7.0_linux_amd64.tar.gz"
        sha256 "87e005594d355cf5ba914512517979c261b681d6a3aa9b05886ac9703621bce4"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.7.0/openlane_0.7.0_linux_arm64.tar.gz"
        sha256 "fae7d6aa10d0baf34cbcf4bbe2355ac757be611ec1ef05e7a05ddacf493d0ef0"

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
