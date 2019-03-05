# geometry_exitcode - just print the last exit code

geometry_exitcode() {
  : ${GEOMETRY_EXIT_COLOR:=red}

  (( ${GEOMETRY_STATUS_SYMBOL_COLOR_HASH:=false} )) && {
    local colors=({1..9})

    (($(echotc Co) == 256)) && colors+=({17..230})

    local sum=0; for c in ${(s::)^HOST}; do ((sum += $(print -f '%d' "'$c"))); done

    GEOMETRY_STATUS_COLOR=${colors[$(($sum % ${#colors}))]}
  }

  local color=GEOMETRY_EXIT_COLOR
  #ansi color "%(?.%F{16}.%F{red}[%?])"
  ansi color "%(?. .[%?])"
}
