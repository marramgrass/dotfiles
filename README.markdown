# marramgrass does dotfiles

This personal home directory configuration system is based off [holman's dotfiles](https://github.com/holman/dotfiles),
via [mauricerkelly](https://github.com/mauricerkelly/dotfiles).

## install

- `git clone git://github.com/marramgrass/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `vi bash/bashrc.symlink` (tweak this up if necessary)
- `rake install` (you'll need the Ruby tool `rake` for this)

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `bash/bashrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.sh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `rake install`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.sh**: Any files ending in `.sh` get loaded into your
  environment.
- **topic/\*.symlink**: Any files or directories ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `rake install`.
- **topic/\completions**: Any files called in `completions` get loaded
  last so that they get loaded after we set up zsh autocomplete functions.
