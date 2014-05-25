# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

# only fools wouldn't do this ;-)
export EDITOR="vim"

# beeps are annoying
setopt NO_BEEP
setopt prompt_subst
autoload -U colors && colors # Enable colors in prompt

source ./zsh/git.sh

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

# Set the right-hand prompt
RPS1="$(git_prompt_string)$(parse_git_dirty)"
