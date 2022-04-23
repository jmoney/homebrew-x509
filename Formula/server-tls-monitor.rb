# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ServerTlsMonitor < Formula
  desc "Reports tls certificate metrics"
  homepage "https://jmoney.dev/"
  version "0.0.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.0.2/server-tls-monitor_0.0.2_Darwin_arm64.tar.gz"
      sha256 "5e30b8a395a0ba3bc386bf6f70488e33e54faa88f3182a7d010385f42d44327b"

      def install
        bin.install "server-tls-monitor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.0.2/server-tls-monitor_0.0.2_Linux_arm64.tar.gz"
      sha256 "fe7b28d22839b34c18f009523dd3f8a19a889e85f1a07dbda2819126c7c2de69"

      def install
        bin.install "server-tls-monitor"
      end
    end
  end

  test do
    system "#{bin}/server-tls-monitor -h"
  end
end
