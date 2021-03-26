class BrewFun < Formula
  desc "Testing brew"
  homepage ""
  url "https://github.com/johnkhbaek/brew-fun/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d9b7c63ec74bbe612ee497616ac594e9a4947ccf6bfcb41cf941ffa5fc76f661"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "make"
    bin.install "wrapper"
  end
  
  test do
    system "/usr/local/bin/wrapper"
  end

end
