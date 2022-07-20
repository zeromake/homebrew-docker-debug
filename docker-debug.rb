require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='0.7.6'

class DockerDebug < Formula
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-#{arch}"
  if Hardware::CPU.intel?
    sha256 "51efaae5a45ebdfb08c8160b67ff324da140bacdaedf855e8147df7fc18d031e"
  else
    sha256 "20363d89553330665c687474d59c9a6362a9e1fa6e3de54cd9a95223cb0e19fc"
  end
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    system "mv", "docker-debug-darwin-#{arch}", "docker-debug"
    bin.install "docker-debug"
  end
end
