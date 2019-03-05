# geometry_node - show node and npm/yarm version when in a node project context

geometry_node() {
    test -n "$GEOMETRY_NODE_PIN" || test -f package.json || test -f yarn.lock || return 1
    (( $+commands[node] )) || return

    GEOMETRY_NODE=$(ansi ${GEOMETRY_NODE_COLOR:=green} ${GEOMETRY_NODE_SYMBOL="⬡"})

    local package_manager=npm

    (( $+commands[yarn] )) && [[ -f yarn.lock ]] && package_manager=yarn

    local node_version="$(node -v 2>/dev/null)"
    echo -n "$GEOMETRY_NODE $node_version"
}
