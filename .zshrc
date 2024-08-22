# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi




HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt inc_append_history
setopt share_history
setopt append_history

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt nocaseglob
zstyle ':completion:*' menu select=1
zstyle 'completion:*:default' list-promt '%p'





source /home/expouser/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/expouser/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath+=/home/expouser/.config/zsh/zsh-completions/zsh-completions.plugin.zsh
source /home/expouser/.config/zsh/zsh-autopair/autopair.zsh
source /home/expouser/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/expouser/.config/zsh/zsh-vi-mode/zsh-vi-mode.zsh
source ~/.fzf.zsh
source /home/expouser/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme


alias ls="exa --long --header"
alias tree="exa --tree --level=2"
alias nekoray="~/EM-H/APPS/VPN/nekoray/nekoray"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
