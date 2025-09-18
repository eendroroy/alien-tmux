_current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

__cleanup() {
  unset -v _current_dir
  unset -f __load __cleanup
}

__load() {
  tmux set-environment -g ALIEN_GITMUX_CFG "${_current_dir}/src/gitmux.yaml"
  tmux source-file "$_current_dir/src/options.conf"

  local color_scheme=$(tmux show-option -gqv "@alien_colorscheme")
  local style=$(tmux show-option -gqv "@alien_status_bar_style")

  tmux source-file "$_current_dir/src/symbol.conf"

  if [[ -f "$_current_dir/src/style/${style}.style" ]]; then
    tmux source-file "$_current_dir/src/style/${style}.style"
  else
    tmux display-message "Alien: Status Bar Style '${style}' not found. Falling back to 'powerline'."
    tmux source-file "$_current_dir/src/style/powerline.style"
  fi

  if [[ -f "$_current_dir/src/colorscheme/${color_scheme}.scheme" ]]; then
    tmux source-file "$_current_dir/src/colorscheme/${color_scheme}.scheme"
  else
    tmux display-message "Alien: Color scheme '${color_scheme}' not found. Falling back to 'default'."
    tmux source-file "$_current_dir/src/colorscheme/default.scheme"
  fi

  tmux source-file "$_current_dir/src/status-content.conf"
}

__load
__cleanup
