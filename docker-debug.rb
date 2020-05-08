require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='0.7.3'

class DockerDebug < Formula
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-amd64"
  sha256 "28d3aaf47f16f5e9aa87c231cb373b74a3486c4c0d1eb4352ceeb5cb8f0b4b29"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "docker-debug-darwin-amd64", "docker-debug"
    bin.install "docker-debug"
  end
end
