class Openlane < Formula
    desc "openlane is the client CLI for interacting with Openlane Server"
    homepage "https://github.com/theopnelane/core"
    version "0.1.6"
    license "Apache-2.0"
  

  
    test do
      system "#{bin}/openlane --help"
    end
  end