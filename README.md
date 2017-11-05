# homebrew-lc3tools

Homebrew LC3tools installation script

Will compile and install lc3tools bundle from http://highered.mheducation.com/sites/0072467509/student_view0/lc-3_simulator.html 

Will get rid of the documentation files in the bin folder(move them into the keg folder away from the bin folder), but the lc3 os files still have to be there for the lc3sim to work.

Will edit the font used in lc3sim-tk, so the assembly and console view windows fonts are monospace and aligned.

If you clicked the close button on lc3sim-tk and was stuck, press ctrl+c from the terminal to terminate it. (someone who knows tcl-tk may be able to patch the script tho)
