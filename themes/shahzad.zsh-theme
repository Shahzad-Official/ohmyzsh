# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

# Git prompt styling
ZSH_THEME_GIT_PROMPT_PREFIX="%{\e[1;33m%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{\e[0m%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{\e[1;31m%} *"
ZSH_THEME_GIT_PROMPT_CLEAN="%{\e[1;32m%}"

PROMPT=$'%{\e[1;34m%}%B╭─[%b%{\e[0m%}%{\e[1;36m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[38;5;208m%}%m%{\e[1;34m%}%B] ─ [%b%{\e[1;37m%}%B'%D{"%a %b %d, %H:%M"}%b$'%{\e[1;34m%}%B]%b%{\e[0m%}
%{\e[1;34m%}%B├─[%b%{\e[1;32m%}%~%{\e[1;34m%}%B]%b%{\e[0m%}
%{\e[1;34m%}%B╰─%b%{\e[1;36m%}< %{\e[1;33m%}$(git_prompt_info)%{\e[1;36m%} >%{\e[0m%} %{\e[1;34m%}[%{\e[1;32m%}$%{\e[1;34m%}]%{\e[0m%}%b '
PS2=$' \e[1;34m%}%B>%{\e[0m%}%b '
