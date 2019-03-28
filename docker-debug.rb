require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='v0.3.0'

class DockerDebug < Formula
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-amd64"
  sha256 "fb6bdfc60c745ad2864a8209ad88ae244986852499cf3e4e151b6f16675ce477"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "docker-debug-darwin-amd64", "docker-debug"
    bin.install "docker-debug"
  end
end
