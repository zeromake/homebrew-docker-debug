require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='0.7.5'

class DockerDebug < Formula
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-#{arch}"
  if Hardware::CPU.intel?
    sha256 "d5762780d14372b51f8efa00ad2e4b4ccf04d564acfe0d289550bcf0cf24c15d"
  else
    sha256 "a6f43071f2cb61b704a91856876dfeeb5998c0c1b5b19ccd5cb61d7a9dcc1b4e"
  end
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    system "mv", "docker-debug-darwin-#{arch}", "docker-debug"
    bin.install "docker-debug"
  end
end
