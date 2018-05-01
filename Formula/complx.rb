# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Complx < Formula
  desc "Complx lc3 toolkit"
  homepage "https://github.com/TricksterGuy/complx"
  head "https://github.com/TricksterGuy/complx.git", :using => :git

  depends_on "cmake" => :build
  depends_on "wxmac"
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "mkdir", "build"
	  Dir.chdir("build") do
	    system "cmake", "..", *std_cmake_args
	    system "make"
      system "make", "install" # if this fails, try separate make/make install steps
	  end
	# system "cp", "-r", "build", "#{prefix}/"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test complx`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
