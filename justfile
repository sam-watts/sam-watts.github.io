default:
  just --list


worktree branch_name:
    git worktree add /Users/swatts/repos/worktrees/{{branch_name}} {{branch_name}} || (git branch {{branch_name}} origin/master && git worktree add /Users/swatts/repos/worktrees/{{branch_name}} {{branch_name}})
    code -n /Users/swatts/repos/worktrees/{{branch_name}}

worktree_remove branch_name:
    git worktree remove --force {{branch_name}}
