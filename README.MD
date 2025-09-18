# Alien-Tmux

## Styles

- Default              `set -g @alien_colorscheme 'default'`
- Catppuccin Macchiato `set -g @alien_colorscheme 'catppuccin/macchiato'`
- Grayscale            `set -g @alien_colorscheme '256/grayscale'`
- E Ink Dark           `set -g @alien_colorscheme 'e_ink/dark'`

### Configurations

```shell
set -g @alien_colorscheme       'default'
set -g @alien_time_format       '%I:%M:%S %p'
set -g @left_separator_symbol   ''
set -g @right_separator_symbol  ''
set -g @window_decorator_symbol ''
set -g @start_symbol            '█'
set -g @end_symbol              '█'
```


<details>
<summary>Rightward arrow</summary>

```shell
set -g @left_separator_symbol   ''
set -g @right_separator_symbol  ''
set -g @window_decorator_symbol ''
set -g @start_symbol            '█'
set -g @end_symbol              ''
```
</details>

<details>
<summary>Leftward arrow</summary>

```shell
set -g @left_separator_symbol   ''
set -g @right_separator_symbol  ''
set -g @window_decorator_symbol ''
set -g @start_symbol            '█'
set -g @end_symbol              '█'
```
</details>

## Themes customization

<details>
<summary>Customize colors and attributes in your `.tmux.conf`</summary>

```shell
set -g @status_fg                  white
set -g @status_bg                  black
set -g @pane_border_fg             brightblack
set -g @pane_border_bg             black
set -g @pane_active_border_fg      blue
set -g @pane_active_border_bg      black
set -g @message_fg                 cyan
set -g @message_bg                 black
set -g @message_command_fg         cyan
set -g @message_command_bg         black
set -g @display_panes_color        black
set -g @display_panes_active_color brightblack

set -g @session_fg                 black
set -g @session_bg                 brightblue
set -g @window_fg                  white
set -g @window_bg                  brightblack
set -g @current_window_fg          black
set -g @current_window_bg          white

set -g @time_fg                    black
set -g @time_bg                    white
set -g @host_fg                    black
set -g @host_bg                    red

set -g @session_attr               bold
set -g @window_attr                bold
set -g @current_window_attr        bold
set -g @time_attr                  bold
set -g @host_attr                  bold
```
</details>

## Prefix highlight Support

Customize prefix highlight colors and attributes:

```shell
set -g @prefix_highlight_fg        black
set -g @prefix_highlight_bg        red
set -g @prefix_highlight_attr      bold
```

## Gitmux Support

Enable gitmux in your `.tmux.conf`:

```shell
set -g @alien_gitmux_enabled true
```

Custom Config file path:

```shell
set -g @alien_gitmux_config_path '~/.gitmux.cfg'
```

<details>
<summary>Customize gitmux symbols:</summary>

```shell
set -g @alien_gitmux_branch_symbol     '⎇ '
set -g @alien_gitmux_hashprefix_symbol ':'
set -g @alien_gitmux_ahead_symbol      '↑·'
set -g @alien_gitmux_behind_symbol     '↓·'
set -g @alien_gitmux_staged_symbol     '● '
set -g @alien_gitmux_conflict_symbol   '✖ '
set -g @alien_gitmux_modified_symbol   '✚ '
set -g @alien_gitmux_untracked_symbol  '… '
set -g @alien_gitmux_stashed_symbol    '⚑ '
set -g @alien_gitmux_clean_symbol      '✔'
set -g @alien_gitmux_insertions_symbol 'Σ'
set -g @alien_gitmux_deletions_symbol  'Δ'
```
</details>

<details>
<summary>Customize gitmux colors and attributes</summary>

```shell
set -g @alien_gitmux_clear_fg      default
set -g @alien_gitmux_state_fg      red
set -g @alien_gitmux_branch_fg     white
set -g @alien_gitmux_remote_fg     cyan
set -g @alien_gitmux_divergence_fg default
set -g @alien_gitmux_staged_fg     green
set -g @alien_gitmux_conflict_fg   red
set -g @alien_gitmux_modified_fg   red
set -g @alien_gitmux_untracked_fg  magenta
set -g @alien_gitmux_stashed_fg    cyan
set -g @alien_gitmux_clean_fg      green
set -g @alien_gitmux_insertions_fg green
set -g @alien_gitmux_deletions_fg  red
set -g @alien_gitmux_bg            black
```
</details>

## Contributing

Bug reports and pull requests are welcome on GitHub at [alien-tmux](https://github.com/eendroroy/alien-tmux) repository.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

  1. Fork it ( https://github.com/eendroroy/alien-tmux/fork )
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create a new Pull Request

## License

This project is licensed under the [GNU AGPL-3.0 License](https://www.gnu.org/licenses/agpl-3.0.html).
See the [LICENSE](./LICENSE) file for more details.
