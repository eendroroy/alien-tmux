_current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

__cleanup() {
  unset -v _current_dir
  unset -f __load __cleanup
  tmux set-environment -gu ALIEN_TIME_FORMAT
}

__load() {
  set -g status-interval 1
  set -g status on
  set -g status-justify left

  local color_scheme=$(tmux show-option -gqv "@alien_colorscheme")
  local time_format=$(tmux show-option -gqv "@alien_time_format")

  if [[ -f "$_current_dir/src/colorscheme/${color_scheme}.colorscheme" ]]; then
    tmux source-file "$_current_dir/src/colorscheme/${color_scheme}.colorscheme"
  else
    tmux display-message "Alien: Color scheme '${color_scheme}' not found. Falling back to 'default'."
    tmux source-file "$_current_dir/src/colorscheme/default.colorscheme"
  fi

    if [[ -n "$time_format" ]]; then
      tmux set-environment -g ALIEN_TIME_FORMAT "$time_format"
    else
      tmux set-environment -g ALIEN_TIME_FORMAT "%Y-%m-%d  %I:%M:%S %p"
    fi

  tmux source-file "$_current_dir/src/status-content.conf"
}

__load
__cleanup
