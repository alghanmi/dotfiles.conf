##TMux Setup

For consistant results. The terminal ID from your terminal application along with `$TERM` environment variable and terminal settings in `.tmux.conf` should match to properly support 256 colors.

###`$TERM` Setup

1. The terminal application such as gnome-terminal or iTerm2 should identify itself as `screen-256color`

1. In your `.bashrc` (or `.bash_profile` if you are on Mac):
```bash
#Set terminal to screen-256color in TMUX
if [ -n "$TMUX" ]; then
	export TERM=screen-256color
fi

#Force TMUX to start in 256 support-mode
alias tmux='tmux -2'
```

1. `.tmux.conf` should properly set the terminal to
```bash
set -g default-terminal 'screen-256color'
```

1. If you are using vim within tmux, you should also set the terminal colors:
```
set t_Co=256                        " force vim to use 256 colors
let g:solarized_termcolors=256      " use solarized 256 fallback
```


###Notes
  + [Forcing TERM is bad](http://blog.sanctum.geek.nz/term-strings/)
