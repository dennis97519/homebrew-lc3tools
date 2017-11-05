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
    system "./configure --installdir #{prefix}/bin"
    system "make"
    system "make install" # if this fails, try separate make/make install steps
    #move documentation files out of bin
    system "mv #{prefix}/bin/COPYING #{prefix}/bin/NO_WARRANTY #{prefix}/bin/README #{prefix}/"
    #change font from lucida console (unavailbe on mac) to menlo
    system "sed -i -e \"s/Lucida Console/Menlo/g\" #{prefix}/bin/lc3sim-tk"
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
    system "true"
  end
end
