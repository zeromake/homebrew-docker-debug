require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='0.7.8'

class DockerDebug < Formula
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-#{arch}"
  if Hardware::CPU.intel?
    sha256 "398b7df224a1b3a4dc85422bc80b25b2bd0386b2102e058f66f5a351b2352aa0"
  else
    sha256 "f6332956ff72d19559aed5cf26d22851fe78f8725d036f7fd2da40be37e4b824"
  end
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    system "mv", "docker-debug-darwin-#{arch}", "docker-debug"
    bin.install "docker-debug"
  end
end
