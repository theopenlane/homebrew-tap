# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.8.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.8.5/openlane_0.8.5_darwin_amd64.tar.gz"
      sha256 "b403788317de4a18e17f1cf438c6810c35cbdd77994c040b2f3c136ff99dbdb7"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.8.5/openlane_0.8.5_darwin_arm64.tar.gz"
      sha256 "602bb935435d15c0d0f95709147f559a9c215a1fa7802a2003e77b7979bfc258"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.8.5/openlane_0.8.5_linux_amd64.tar.gz"
        sha256 "fd9292fc62ead8b218fa407f9f8e2982fe46128a790f525be7ad3b59f984c6ea"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.8.5/openlane_0.8.5_linux_arm64.tar.gz"
        sha256 "745867eb0a721eb3af7e62290daadaa51d5257e4b20acedcfdea37daa50712fc"

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
