# Dotfiles

My collection of dotfiles.

This project uses the [homesick][]'s `bash` implementation [homeshick][]
 to manage the dotfiles it contains.

[homesick]: https://github.com/technicalpickles/homesick
[homeshick]: https://github.com/andsens/homeshick

## First home(shick) on a computer

As this is most often my first homeshick on a computer, here is how I install `homeshick`:

    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

The default macOS `.profile` does not reference `.bashrc`, and as I'm replacing these files anyway, so I'll just source it directly:

    source "$HOME/.homesick/repos/homeshick/homeshick.sh"

## Installation

Once you've installed and sourced `homeshick` add this repository:

    homeshick clone https://github.com/lloydde/dotfiles
