# My Dotfiles

## Neovim

The plugin manager I use is called vim-plug. Read more about it here: https://github.com/junegunn/vim-plug. Once you have written your config file, run `:PlugInstall`, but you can switch it out for any plugin manager you prefer.

The configuration should work fine for regular vim, just add the lines to your `.vimrc` file.

## i3

### Changes

- rebind `j k l ;` to `h j k l`.

- rebind `h` to `z`. horiZontal ;)

- execute picom at start.

- execute feh at start.

- execute i3lock-fancy at start.

- use ALT as MOD key.

- `CTRL + MOD + DEL` executes i3lock-fancy script.

- `CTRL + MOD + <` move workspace to left monitor

- `CTRL + MOD + >` move workspace to right monitor

- configure i3-gaps

### Config Dependencies

`picom` - picom is a compositor used for transparent windows.

`feh` - feh is used to manage desktop wallpaper.

`i3lock` - lockscreen.

`i3lock-fancy` - i3lock-fancy is a script that takes a screenshot of your current screen, blurs it and sets it as the image for i3lock.

`i3-gaps` - used for gaps between windows.

### Extras

I use `xrender` as the backend for picom as `glx` was giving me issues.
