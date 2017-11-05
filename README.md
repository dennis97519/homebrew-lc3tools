# homebrew-lc3tools

Homebrew LC3tools installation script

Hacky script to provide a way of cleanly installing and uninstalling lc3tools, and the ease of working on your LC3 homework from home.

Use this with 
```
brew tap dennis97519/lc3tools
brew install lc3tools
```

After installing, you can use lc3convert, lc3as, lc3sim and lc3sim-tk directly in the terminal.

## What does it do
1. It will compile and install lc3tools bundle from the [Introduction to Computing Systems book's official site](http://highered.mheducation.com/sites/0072467509/student_view0/lc-3_simulator.html).

2. It will edit the font used in lc3sim-tk, so the assembly and console view windows fonts are monospace and aligned.

3. It will symlink the executables into the bin folder so the tools can be used systemwide.

## Note on using lc3sim-tk
If you clicked the close button instead of the Quit button on lc3sim-tk and got stuck, press ctrl+c from the terminal to terminate it. (someone who knows tcl-tk may be able to patch the script tho)
