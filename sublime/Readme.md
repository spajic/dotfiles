# My SublimeText setup

## From Menu
- View -> Hide Minimap
- Sublime Text -> Settings -> Key Bindings (copy contents from `keymaps` file)
- cmd + , (copy contents from `Prefereces.sublime-settings` file)

## Packages
- Package Control (instal from cmd+shift+p)
- RailsCasts Extended theme
- Advanced New File (create file with given name with Cmd+Option+N; start from `:` to create file in current folder)
- Pretty JSON (format jsons)
- DiffTabs (spot differences) (right-click on inactive tab, `Diff with current tab...`)
- SublimeLinter (for rubocop)
- SublimeLinter-rubocop (rubocop)


## Rubocop Integration
In SublimeLinter User settings add

```json
"linters": {
    "rubocop": {
      "executable": ["~/.rbenv/shims/bundle", "exec", "rubocop"],
    }
  }
```

To debug rubocop

- add "debug": true to SublimeLinter settings
- see View -> Show Console

## Rubocop Usage
(Cmd+Ctrl+L) |  Cmd+Shift+P -> Lint this view
