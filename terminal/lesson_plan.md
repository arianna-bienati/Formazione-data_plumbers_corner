# Introducing the terminal

## Technicalities

> This part will possibly have a couple slides

1. (who I am and how I ended up here)
2. recap of what is needed today in terms of setup from last time:
    - a working UNIX-like shell (Linux/MacOS/Windows with WSL; if someone is new and doesn't have that, they can follow the tutorial using the online terminal at [bellard.com](https://bellard.org/jslinux/vm.html?url=alpine-x86.cfg&mem=192))
    - (a text GUI editor, VSCode recommended)

## Introduction

> This part will definitely have slides.

1. what a terminal is/was _historically_, i.e. the physical device and why it was needed
2. what we generally mean by terminal _now_ (an emulator, and in practice a text-based interface to your computer)
3. terminology: terminal/command line/command prompt/shell vs. bash & co. (i.e. specific shells)
4. why, in the era of GUIs, it is still relevant to learn how to use the terminal:
   - many useful programs _only_ have a textual interface <!--example: pandoc, which I used to build my slides-->
   - certain operations are more efficient (or just _more convenient_!) if performed on the command line (cf. modern chat-based AI assistants... free input, but still fully text-based!)
   - using the terminal is often the best way to run your own programs (wrt. the play button in your IDE)
   - basic interaction with remote servers
5. why bash in particular: because it's the #1 UNIX shell (recap on why Unix from previous seminar, recommend [this video](https://www.youtube.com/watch?v=tc4ROCJYbm0) and possibly show some snippets - I should even have Italian subtitles somewhere...)
6. other shells - just briefly mention (__no slides__):
   - a couple other shells that are viable for this course (fish, zsh...)
   - some that might work to some extent (e.g. PowerShell)
   - some that aren't really usable in this session, such as the infamous Windows Command Prompt

## Basic commands

> This part will _not_ have slides; it will be a live demo and they can follow along. I will try to go slowly and Ludovica could help if someone gets stuck on something. I can also make the full shell output available afterwards, maybe

### Moving around the filesystem

> Terminal and file manager side by side

- `pwd` & concept of _absolute path_
- `cd` & concept of _relative path_
- `ls` (`-l`)
- `tree` (may not be preinstalled, but that's a good excuse for them to learn how to install CLI programs on their distribution $\to$ `sudo`, `apt install` for Ubuntu & co. users)

### Creating, (re)moving, copying files and folders

> Terminal and file manager side by side

- `mkdir`
- `touch`
- `cp` (`-r`) (+ tab autocompletion)
- `rm` (`-r`)
- `mv`

### Visualizing and editing files

- `cat`
- `more`
- `less`
- `nano`

### Other useful commands

- `history` (and how to browse it with arrows)
- `man`
- (`h`)`top` (to install, at least for the majority)
- (`xdg-`)`open`
- `grep` (only simple text, no regex yet), explain redirection with `>` and `<` in conjunction

## Combining commands

- putting commands in sequence: `;` and `&&` (example: `sleep 5 && pling`)
- pipe (example: `history | grep`)
- basic text analysis (all in one line): download a pre-tokenized file, show its contents and find the top 10 most frequent words. This will introduce other useful commands (`tr`, `sort`, `head`, `uniq`...) (the resulting command is something like `curl https://raw.githubusercontent.com/LaboratorioSperimentale/Formazione-data_plumbers_corner/refs/heads/main/02-materials/alice.txt > alice.txt && cat alice.txt | tr " " "\n" | sort | uniq -c | sort -nr | head -n10`, but explain algorithm and show pre-tok file first)
- scripts (rewriting the same thing as a `.sh` file and executing it; mention that bash is a real high-level programming language)

### Exercises

> Here, I will stop talking and let the audience try to solve some mini-problems. I will ready to answer questions of general interest, and hopefully Ludovica can help with the practical problems each individual encounters

Modify the script in different ways:

- to show the _20_ most frequent words
- to show the 20 _least_ frequent words
- to show all words and their counts _in alphabetical order_
- to store the results in a new text file
- ...

## Spoilers

> Probably one more slide

- save those scripts!
- what is next (how to version control them ;)
