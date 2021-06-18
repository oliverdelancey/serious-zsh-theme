# vim:ft=zsh ts=2 sw=2 sts=2
#
# A serious and customizable oh-my-zsh theme with fun and practical settings.
# See Features on line 25.
#
# Copyright (c) 2021 Oliver C. Sandli
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#
# Example prompts:
#
# A successful prompt:
# username@~/projects >                     :) 9:00AM
#
# An unsuccessful prompt:
# username@~/projects >                     :| 9:00AM
#
#
# Features:
# - Git integration.
# - Username.
# - Current directory up to a custom depth (default 2).
# - Time in RPROMPT.
# - Happy/sad exit status indicator (0 = ':)', else ':|').
#
#
# Customizable variables.
# NOTE: You could change the indicators to emoji or powerline symbols if that's
# your cup of tea. They are regular characters by default to make this theme as
# compatible as possible.
#
#   HAPPY_IND   -> The indicator for programs that happily exit.
#   HAPPY_COLOR -> The color of HAPPY_IND.
#   SAD_IND     -> The indicator for recalcitrant programs.
#   DIR_DEPTH   -> The amount of directories shown in the left prompt.
#   PROMPT_END  -> The indicator for the left end of the prompt.
#

HAPPY_IND=":)"
HAPPY_COLOR="%{$fg_bold[green]%}"

SAD_IND=":|"

DIR_DEPTH=2

PROMPT_END=">"


show_dirs() {
    echo "%{$fg_bold[blue]%}%$DIR_DEPTH~%{$reset_color%}"
}

prompt_end() {
    echo "$PROMPT_END"
}

return_status() {
    echo "%(?.$HAPPY_COLOR$HAPPY_IND%{$reset_color%}.%{$fg_bold[red]%}$sad_ind)"
}

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

PROMPT='%{$fg_bold[yellow]%}%n%{$reset_color%}@'
PROMPT+='$(show_dirs)'
PROMPT+='$(git_prompt_info)'
PROMPT+=' $(prompt_end) '

RPROMPT='$(return_status)'
RPROMPT+='%{$fg_bold[green]%}%t%{$reset_color%}'
