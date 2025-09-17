_current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

__cleanup() {
  unset -v _current_dir
  unset -f __load __cleanup
  tmux set-environment -gu ALIEN_TIME_FORMAT
}

__load() {
  local color_scheme=$(tmux show-option -gqv "@alien_style")
  local time_format=$(tmux show-option -gqv "@alien_time_format")

  tmux set-environment -g ALIEN_GITMUX_CFG "${_current_dir}/src/gitmux.yaml"

  tmux source-file "$_current_dir/src/symbol.conf"

  if [[ -f "$_current_dir/src/style/${color_scheme}.style" ]]; then
    tmux source-file "$_current_dir/src/style/${color_scheme}.style"
  else
    tmux display-message "Alien: Color scheme '${color_scheme}' not found. Falling back to 'default'."
    tmux source-file "$_current_dir/src/style/default.style"
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
