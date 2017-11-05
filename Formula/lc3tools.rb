# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Lc3tools < Formula
  desc "LC3 assembler, converter and simulator"
  homepage "http://highered.mheducation.com/sites/0072467509/student_view0/lc-3_simulator.html"
  url "http://highered.mheducation.com/sites/dl/free/0072467509/104652/lc3tools_v12.zip"
  version "12"
  sha256 "3d3334a257bca4788999469a8633f0701418f3f8555604210036786d2001b772"

  def install
    #compile and install
    system "./configure", "--installdir", prefix
    system "make"
    system "make", "install" 

    #change font from lucida console (unavailbe on mac) to menlo
    system "sed", "-i", "", "-e" ,"s/Lucida Console/Menlo/g", "#{prefix}/lc3sim-tk"

    #symlink executables into bin
    system "mkdir", "#{prefix}/bin"
    system "ln","-s", "#{prefix}/lc3sim-tk", "#{prefix}/bin/lc3sim-tk"
    system "ln","-s", "#{prefix}/lc3sim", "#{prefix}/bin/lc3sim"
    system "ln","-s", "#{prefix}/lc3as", "#{prefix}/bin/lc3as"
    system "ln","-s", "#{prefix}/lc3convert", "#{prefix}/bin/lc3convert"

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test lc3tools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "which lc3as"
    system "which lc3convert"
    system "which lc3sim-tk"
    system "lc3sim -s /dev/null"
  end
end
