# Fishedde

> A collection of fish shell functions that compose my shell

## Installation

Install using package manager
[fisher](https://github.com/jorgebucaran/fisher#installation)

```sh
fisher i alber70g/fishedde
```

## Contents

There's a set of commands that I use frequently. You might like it or not, feel free to copy and reuse. 

> Mention the repo `albert70g/fishedde` when you do so

### Git Commands

- `gcl`  
  git clone command that takes creates a directory for the owner and clones in that directory

```
 $ gcl git@github.com:alber70g/fishedde.git
 $ cd alber70g/fishedde
 $ _
```



### Utility functions

- `ez`  
  an alias for [thefuck](https://github.com/nvbn/thefuck) - a quick way to fix
  your mistyped commands

```
 $ git barnch
git: 'barnch' is not a git command.
 $ ez
git branch [enter/↑/↓/ctrl+c] <enter>
* master
 $ _
```

- `mcd`  
  Combination of `mkdir` and `cd`.

```
 $ mcd alber70g/fishedde
 $ pwd
~/alber70g/fishedde
 $ _
```

- `l`  
  Alias for `ls -latrF`

- `...`  
  A way to move up two directories `../../`  
  It's loaded by `setDDD.fish`

- `....`  
  A way to move up two directories `../../../`  
  It's loaded by `setDDDD.fish`
