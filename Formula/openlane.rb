# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/theopenlane/core/releases/download/v0.3.3/openlane_0.3.3_darwin_amd64.tar.gz"
      sha256 "476bf710d148ec82d66c886edc93ace5fe6e719be99080fa08f7155d1edceea8"

      def install
        bin.install "openlane"
      end
    end
    on_arm do
      url "https://github.com/theopenlane/core/releases/download/v0.3.3/openlane_0.3.3_darwin_arm64.tar.gz"
      sha256 "6498e9232bc8d2d875e9994c50f8a3afaf6282a20273164c0a123a5be439e89a"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.3.3/openlane_0.3.3_linux_amd64.tar.gz"
        sha256 "3122e6e47654631187090cdd3409a66e390a54c45d89704cfa412b785389dbb2"

        def install
          bin.install "openlane"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.3.3/openlane_0.3.3_linux_arm64.tar.gz"
        sha256 "9a5fd04477f5adf3cd7f11e7c0b3955e3ff6e7fd0a292e98365fb37c5a57c408"

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
