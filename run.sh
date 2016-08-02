#!/bin/bash
# Watch files changing and run a sync script based on each change.
# Please edit configuations in config.sh in the same directory.
#
# wangjinde
# 8/2/2016

script_dir="$(cd "$(dirname "$0")" && pwd)"
source "${script_dir}/config.sh"

"${script_dir}/changed.sh" "$watch_path" "${script_dir}/${sync_code_script}"
