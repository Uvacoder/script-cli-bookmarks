# CLI Bookmarks

Allows you to bookmark your current working directory then use [`fzf`](https://github.com/junegunn/fzf) to search and cd to your desired bookmark.

## Usage

```
bookmark help
  save   - saves your current working directory to bookmarks
  cd     - lets you search through your bookmarks and cds to the one you select
  list   - lists your bookmarks
  delete - deletes your current working directory from your bookmarks
```

Recommended aliases:

```
alias b="bookmark save"
alias bcd="bookmark cd"
alias bd="bookmark delete"
alias bl="bookmark list"
```

## Installation

1. `git clone https://github.com/danhab99/cli-bookmarks ~/.local/bin"`
2. Add this line to your `.bashrc` or `.zshrc`: `source ~/.local/bin/bookmark.sh`

### Uninstall

1. Delete `~/.local/bin/cli-bookmarks`
2. Remove that `source` line from your `rc` file
