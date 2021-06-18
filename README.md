# Serious ZSH Theme

A serious, no-nonsense zsh theme with a smile. Designed to convey all necessary
information without excessive fluff but still look nice. :)

A successful prompt:
```text
username@~/projects >                     :) 9:00AM
```

An unsuccessful prompt:
```text
username@~/projects >                     :| 9:00AM
```

You can change the theme's [variables](#customizable-varaibles) interactively to find out
what works best for you:
```text
username@my-project/src > DIR_DEPTH=3                  :) 9:00AM
username@projects/my-project/src >                     :) 9:00AM

username@my-project/src > SAD_IND=":("                 :) 9:00AM
username@my-project/src > return 1                     :) 9:00AM
username@my-project/src >                              :( 9:00AM

username@my-project/src > PROMPT_END=":::"             :) 9:00AM
username@my-project/src :::                            :) 9:00AM
```


## Install

Clone this repo.
```bash
git clone https://github.com/oliversandli/serious-zsh-theme.git
```

Copy `serious.zsh-theme` to `~/.oh-my-zsh/themes/`.
```bash
cd serious-zsh-theme
cp serious.zsh-theme ~/.oh-my-zsh/themes/
```

## Customizable Variables

| Variable    | Use                                                 |
| ----------- | --------------------------------------------------- |
| HAPPY_IND   | The indicator for programs that happily exit.       |
| HAPPY_COLOR | The color of `HAPPY_IND`.                           |
| SAD_IND     | The indicator for recalcitrant programs.            |
| DIR_DEPTH   | The amount of directories shown in the left prompt. |
| PROMPT_END  | The indicator for the left end of the prompt.       |
