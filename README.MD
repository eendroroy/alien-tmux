# Alien-Tmux

## Styles

- Default              `set -g @alien_style 'default'`
- Catppuccin Macchiato `set -g @alien_style 'catppuccin/macchiato'`
- Grayscale            `set -g @alien_style '256/grayscale'`
- E Ink Dark           `set -g @alien_style 'e_ink_dark'`

### Configurations

```shell
set -g @alien_style             'default'
set -g @alien_time_format       '%I:%M:%S %p'
set -g @left_separator_symbol   ''
set -g @right_separator_symbol  ''
set -g @window_decorator_symbol ''
set -g @start_symbol            '█'
set -g @end_symbol              '█'
```

#### rightward arrow
```shell
set -g @left_separator_symbol   ''
set -g @right_separator_symbol  ''
set -g @window_decorator_symbol ''
set -g @start_symbol            '█'
set -g @end_symbol              ''
```

#### leftward arrow
```shell
set -g @left_separator_symbol   ''
set -g @right_separator_symbol  ''
set -g @window_decorator_symbol ''
set -g @start_symbol            '█'
set -g @end_symbol              '█'
```

## Themes customization

Customize colors and attributes in your `.tmux.conf`:

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

## Prefix highlight

Customize prefix highlight colors and attributes:

```shell
set -g @prefix_highlight_fg        black
set -g @prefix_highlight_bg        red
set -g @prefix_highlight_attr      bold
```

## Gitmux support

Enable gitmux in your `.tmux.conf`:

```shell
set -g @alien_gitmux_enabled true
```

Customize gitmux symbols:

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
