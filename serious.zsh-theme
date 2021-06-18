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
# Features:
# - Git integration.
# - Username.
# - Current directory up to 2.
# - Time in RPROMPT.
# - Happy/sad exit status indicator (0 = ':)', else ':|').
#   These can be customized with $happy_ind and $sad_ind.
#
#
# Examples:
#
# A successful prompt:
# username@~/projects >                     :) 9:00AM
#
# An unsuccessful prompt:
# username@~/projects >                     :| 9:00AM
#

happy_ind=":)"
sad_ind=":|"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

PROMPT='%{$fg_bold[yellow]%}%n%{$reset_color%}@'
PROMPT+='%{$fg_bold[blue]%}%2~%{$reset_color%}'
PROMPT+='$(git_prompt_info)'
PROMPT+=' > '

RPROMPT='%(?.$happy_ind.%{$fg_bold[red]%}$sad_ind)'
RPROMPT+='%{$fg_bold[green]%}%t%{$reset_color%}'
