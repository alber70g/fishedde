# Fishedde

> A collection of fish shell functions that compose my shell

## Installation

Install using package manager
[fisher](https://github.com/jorgebucaran/fisher#installation)

```sh
fisher i alber70g/fishedde
```

## Contents

There's a set of commands that I use frequently. You might like it or not, feel
free to copy and reuse.

If you have fixes, or ways to make the commands better, please
[fork](https://github.com/alber70g/fishedde/fork) and send a pull request

> Mention the repo `albert70g/fishedde` when you do so

### Git Commands

- `gcl`  
  git clone command that takes creates a directory for the owner and clones in
  that directory

```
 $ gcl git@github.com:alber70g/fishedde.git
 $ cd alber70g/fishedde
 $ _
```

- `gco`  
  git checkout recently visited branches interactive with fzf

```
 $ gco
origin/master
master
2/2
> _
```

- `gunpushed`  
  shows the git log of unpushed changes of the current branch

  ```
  $ gunpushed                                                                              18:38:57
  commit 8e45b2288d40adbb7e02467cb384d8e8606ffa85 (HEAD -> master)
  Author: Albert Groothedde <albertgroothedde@gmail.com>
  Date:   Tue Sep 10 18:38:57 2019 +0200

    Added git_commands to README
  $ _
  ```

- `gdelete`  
  switch to temp branch, delete branch, switch back remote tracking branch.
  Interactively select the to be deleted branch

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
