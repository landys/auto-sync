#!/bin/bash
# wangjinde
# 7/29/2016

script_dir="$(cd "$(dirname "$0")" && pwd)"
source "${script_dir}/config.sh"

mod_file="$1"
dest_file=${mod_file/"$watch_path"/"$dest_path"}

ext="${mod_file##*.}"

ele_in() {
    local e
    for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
    return 1
}

if (ele_in "$ext" "${filter_exts[@]}") && [ -f "$mod_file" ]; then
    echo cp -f "$mod_file" "$dest_file"
fi

