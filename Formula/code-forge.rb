class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.3.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.3.0/forge-x86_64-apple-darwin"
    sha256 "6b28f95638ed4a671a67901cfdb10fbc99f1a65ed4294a7386adc0f0c795a38f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.3.0/forge-aarch64-apple-darwin"
    sha256 "705d2fe3f730b66ec1b4f1d9aa0956bbe226f72bf31378d6f474d478520072e0"
  end

  def install
    if Hardware::CPU.intel?
        executable_name = "forge-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "forge-aarch64-apple-darwin"
    end
    bin.install executable_name => "forge"
  end
end
