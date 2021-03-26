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
    system "make"
    bin.install "wrapper"
  end

#  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test brew-fun`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
#    system "false"
#  end
end
