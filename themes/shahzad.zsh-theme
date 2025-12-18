# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

# Git prompt styling
ZSH_THEME_GIT_PROMPT_PREFIX="%{\e[1;33m%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{\e[0m%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{\e[1;31m%} *"
ZSH_THEME_GIT_PROMPT_CLEAN="%{\e[1;32m%}"

# Custom git prompt with brackets only when in a git repo
function git_prompt_with_brackets() {
  local git_info=$(git_prompt_info)
  if [[ -n "$git_info" ]]; then
    echo "%{\e[0;35m%}($git_info%{\e[0;35m%})%{\e[1;34m%} ─ "
  fi
}

PROMPT=$'%{\e[1;34m%}%B╭─[%b%{\e[0m%}%{\e[1;36m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[1;35m%}%m%{\e[1;34m%}%B] ─ [%b%{\e[1;33m%}%~%{\e[1;34m%}%B] ─ [%b%{\e[1;34m%}%B'%D{"%a %b %d, %H:%M"}%b$'%{\e[1;34m%}%B]%b%{\e[0m%}
%{\e[1;34m%}%B╰─$(git_prompt_with_brackets)[%{\e[1;32m%}$%{\e[1;34m%}]%{\e[0m%}%b '
PS2=$' \e[1;34m%}%B>%{\e[0m%}%b '
