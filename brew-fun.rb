class BrewFun < Formula
  desc "Testing brew"
  homepage ""
  url "https://github.com/johnkhbaek/brew-fun/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d9b7c63ec74bbe612ee497616ac594e9a4947ccf6bfcb41cf941ffa5fc76f661"
  license ""

  def install
    bin.install "wrapper"
    system "./wrapper"
  end
end
