# If you have fixes, or ways to make the commands better, please
# [fork](https://github.com/alber70g/fishedde/fork) and send a pull request

function gunpushed --description "Git: show unpushed changes on current branch"
  git log origin/(git symbolic-ref --short HEAD)..HEAD
end

function _getRecentBranches
  git reflog | grep -m 40 checkout | cut -d ' ' -f 6
  #git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | grep -m 15 ''
  git for-each-ref --sort=committerdate --format='%(refname:short)' | grep -m 15 '' | tac
end 

function gco --description "Git: git checkout recently visited branches"
  #git for-each-ref --format='%(refname:short)' --sort=committerdate | grep 'origin/'
  _getRecentBranches | awk '!x[$0]++' | fzf | xargs git checkout
end

function gdelete --description "Git: switch to temp branch, delete branch, 
    switch back remote tracking branch"
  git checkout -b temp_branch 
  set dBranch (git branch |  sed 's/[[:blank:]]//g' | sed 's/\*//' | fzf)
  git branch -D $dBranch
  git checkout $dBranch
  git branch -D temp_branch 
end

function gcl --description "Git clone in subdirectory based on repository owners name"
  echo $argv | rev | cut -d"/" -f 1,2 | cut -d":" -f 1 | cut -d"." -f 2-99 | rev | xargs git clone $argv
end
