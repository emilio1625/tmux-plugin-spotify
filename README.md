# tmux-plugin-spotify
tmux plugin displaying currently played song on Spotify

**Note**: It works only on Linux!

Requirements
------------

In order to use this plugin, you need to install [sp](https://gist.github.com/emilio1625/5e8f9e5d81965b9b69d8c5c0bbcab8cb), a command-line client for Spotify.

You can do it with the following command:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/emilio1625/tmux-plugin-spotify/master/install-sp.sh)"
```

Make sure that `~/.local/bin` is on your `$PATH`.

Installation
------------
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```
set -g @plugin 'emilio1625/tmux-plugin-spotify'
```

Hit `prefix + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

Usage
-----

In order to see currently played Spotify song via this tmux plugin, add the following command to your `.tmux.conf` file:

```
#{spotify_song}
```

References
----------
- https://github.com/tmux-plugins
- https://github.com/tmux-plugins/tmux-example-plugin
- https://github.com/tmux-plugins/tmux-battery
- https://github.com/pwittchen/dotfiles
- https://github.com/pwittchen/spotify-cli-linux
