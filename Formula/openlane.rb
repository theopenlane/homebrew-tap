# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openlane < Formula
  desc "openlane is the client CLI for interacting with the openlane server"
  homepage "https://github.com/theopenlane/core"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/theopenlane/core/releases/download/v0.5.0/openlane_0.5.0_darwin_amd64.tar.gz"
      sha256 "9f450490a6f86483f144edd435403eb1e2c7a2eaca7aa3da846b46e35784f036"

      def install
        bin.install "openlane"
      end
    end
    on_arm do
      url "https://github.com/theopenlane/core/releases/download/v0.5.0/openlane_0.5.0_darwin_arm64.tar.gz"
      sha256 "92be289f7cd32987017ade117b5f80db7fbaacf87517be46890a58292c95a810"

      def install
        bin.install "openlane"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.5.0/openlane_0.5.0_linux_amd64.tar.gz"
        sha256 "a4d1e719abd334c4298aef6433247f45ee870d40d0da9e2260b8716daabef475"

        def install
          bin.install "openlane"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/theopenlane/core/releases/download/v0.5.0/openlane_0.5.0_linux_arm64.tar.gz"
        sha256 "fd4f104b4a888e332e3f9677dd3003f98bb0f07f08240c211528b0369fefad5c"

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
