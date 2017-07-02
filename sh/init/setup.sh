#!/bin/bash

function pdc_setup() {
    printf "Setup installer...\n"

    pdc_create_veriables "settings.yml"

    _create_if_not_exists "$settings_path_install"
    _create_if_not_exists "$settings_path_log"

    printf "Setup done!\n"
}

function _create_if_not_exists() {
    local path_=$1

    if [ ! -d "$path_" ]; then
        log_info && log_info "Creating directory $path_" && log_info
        mkdir -p "$path_"
    fi
}