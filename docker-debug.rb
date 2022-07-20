require "formula"

REPOSITORY_URL='https://github.com/zeromake/docker-debug'
HOMEBREW_GIT_VERSION='0.7.7'

class DockerDebug < Formula
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  desc "debug docker container"
  homepage "#{REPOSITORY_URL}"
  url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_GIT_VERSION}/docker-debug-darwin-#{arch}"
  if Hardware::CPU.intel?
    sha256 "728ecd9237d4ae7163dc5897b43cd6e835ce7bf8e8bde55c148a276689ee2050"
  else
    sha256 "8539ce818073ad33c4b248e3bafac07077794d45d56caf11f29a54c79de5c3d5"
  end
  head "#{REPOSITORY_URL}.git"
  version "#{HOMEBREW_GIT_VERSION}"

  def install
    arch = Hardware::CPU.intel? ? "amd64" : "arm64"
    system "mv", "docker-debug-darwin-#{arch}", "docker-debug"
    bin.install "docker-debug"
  end
end
