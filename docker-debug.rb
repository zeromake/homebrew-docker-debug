require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='v0.4.0'

class DockerDebug < Formula
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-amd64"
  sha256 "c8d213fa25b97a40b28fcd747da1f1bac034ffe2f28b6bf8c3ef1d8989d4302c"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "docker-debug-darwin-amd64", "docker-debug"
    bin.install "docker-debug"
  end
end
