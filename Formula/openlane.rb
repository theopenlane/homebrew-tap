# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.7.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/theopenlane/core/releases/download/v0.7.5/openlane_0.7.5_darwin_amd64.tar.gz"
      sha256 "aaedfedb0374ba71e5412cbc887a0d8642002c69542cd67834c716a05fd1418e"

      def install
        bin.install "openlane"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/theopenlane/core/releases/download/v0.7.5/openlane_0.7.5_darwin_arm64.tar.gz"
      sha256 "55b75a056b79e5e9b970ca970dc1fa84a3d847c265eab3ed97ae546db7fccf77"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.7.5/openlane_0.7.5_linux_amd64.tar.gz"
        sha256 "04c3635c756cdc75b76245ca7eb5016289a85a5bc2a08e0c3cba169997dc657e"

        def install
          bin.install "openlane"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.7.5/openlane_0.7.5_linux_arm64.tar.gz"
        sha256 "eecd527c93b8b548501bc9099d40f2a13587e1fa422e2c779b64403f0893c36b"

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
