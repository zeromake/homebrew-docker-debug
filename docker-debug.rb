require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='0.7.4'

class DockerDebug < Formula
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-amd64"
  sha256 "0bb821fac268b1bf30bf6cb217a2bea103f3079ff634a3db1fe62c5dc4b899ef"
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    system "mv", "docker-debug-darwin-amd64", "docker-debug"
    bin.install "docker-debug"
  end
end
