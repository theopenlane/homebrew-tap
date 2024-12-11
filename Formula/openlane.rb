# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/theopenlane/core/releases/download/v0.6.0/openlane_0.6.0_darwin_amd64.tar.gz"
      sha256 "517dcc1547ebf3a37cbfeec7805a5aa7cbaaceb9845a6be15102db7467ffa46d"

      def install
        bin.install "openlane"
      end
    end
    on_arm do
      url "https://github.com/theopenlane/core/releases/download/v0.6.0/openlane_0.6.0_darwin_arm64.tar.gz"
      sha256 "89bacbf7d593e7c0bc8b4b52edd46a694dca7c391973a8472eadb1c29261474c"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.0/openlane_0.6.0_linux_amd64.tar.gz"
        sha256 "7c33872d8c50788347f509d1fbc90cf42fe5773496cdff66a8f76690c66e28fd"

        def install
          bin.install "openlane"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.6.0/openlane_0.6.0_linux_arm64.tar.gz"
        sha256 "53e6e26c5c10783ea398928ead6d48d7c8d63ad9883fa0f0740a75d128b434e2"

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
