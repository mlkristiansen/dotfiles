# Morten's Dotfiles

## What Is This?

This repository serves as my way to help me setup and maintain my Ubuntu. 
It takes the effort out of installing everything manually. 
Everything which is needed to install my preffered setup is detailed in this readme. 
Feel free to explore, learn and copy parts for your own dotfiles. Enjoy!


## A Fresh Ubuntu Setup

Follow these install instructions to setup a new Ubuntu.

1. Set main download server
   1. Software & updates -> Ubuntu software -> Download from: Main server
1. Install git: `sudo apt-get update && sudo apt-get install -y git`
1. Clone this repo
1. Run `install.sh` to start the installation
1. Restart your computer to finalize the process
   1. `shutdown -r now`

Your Ubuntu is now ready to use!



## Your Own Dotfiles

If you want to start your own dotfiles from this setup, it's pretty easy to do so. First of all you'll need to fork this repo. After that you can tweak it the way you want.

### Adding (or removing) applications

To add or remove applications, simply add or remove idempotent install scripts to the `applications` folder.

Ensure that the script-files have no suffix like `.sh` or similar. If they have a suffix they will not be run. This is due to the way `run-parts` is implemented.

Enjoy your own Dotfiles!

## Thanks To...

Read the blog post: https://driesvints.com/blog/getting-started-with-dotfiles

I first got the idea for starting this project by visiting the [Github does dotfiles](https://dotfiles.github.io/) project. Both [Zach Holman](https://github.com/holman/dotfiles) and [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) were great sources of inspiration. [Sourabh Bajaj](https://twitter.com/sb2nov/)'s [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/) proved to be invaluable. Thanks to [Taylor Otwell](https://twitter.com/taylorotwell) for [his awesome Zsh theme](https://github.com/taylorotwell/shell)! And lastly, I'd like to thank [Maxime Fabre](https://twitter.com/anahkiasen) for [his excellent presentation on Homebrew](https://speakerdeck.com/anahkiasen/a-storm-homebrewin) which made me migrate a lot to a `Brewfile` and [Mackup](https://github.com/lra/mackup).

In general, I'd like to thank every single one who open-sources their dotfiles for their effort to contribute something to the open-source community. Your work means the world! :earth_africa: :heart:

## License

The MIT License. Please see [the license file](license.md) for more information.
