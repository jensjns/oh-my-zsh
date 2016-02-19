# Colors
for COLOR in CYAN WHITE YELLOW MAGENTA BLACK BLUE RED DEFAULT GREEN GREY; do
    eval PR_$COLOR='%{$fg[${(L)COLOR}]%}'
    eval PR_BRIGHT_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done

PR_RESET="%{$reset_color%}"

local ret_status="%(?:${PR_GREEN}@:${PR_RED}@%s)"
local user="${PR_GREEN}%n${PR_RESET}${ret_status}${PR_GREEN}%m in" #
PROMPT='${user}${PR_GREEN}%p ${PR_CYAN}%c ${PR_RESET}$ '
RPROMPT='$(git_prompt_info)'

# Git
ZSH_THEME_GIT_PROMPT_PREFIX="${PR_YELLOW}git@"
ZSH_THEME_GIT_PROMPT_SUFFIX="${PR_RESET}"
ZSH_THEME_GIT_PROMPT_DIRTY=" ${PR_RED}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ${PR_GREEN}✔"