require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='0.7.4'

class DockerDebug < Formula
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-amd64"
  sha256 "d515939ccdde206461bdde33256367fa738386d85548d748fffbeef608c03828"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "docker-debug-darwin-amd64", "docker-debug"
    bin.install "docker-debug"
  end
end
