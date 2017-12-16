#!/usr/bin/env bash

if [[ $BASH_VERSINFO < 4 ]]; then
    abort 1 'You need at least bash-4.0 to run this script.'
fi

if [ "$(id -u)" = "0" ]; then
    abort 1 'This script should NOT be started using sudo or as the root user!'
fi

if [[ -z "$HOME" ]]; then
    abort 1 "\${HOME} is not defined. Please set it first."
fi

source "${EXEC_DIR}/lib/alerts.sh"
source "${EXEC_DIR}/lib/errors.sh"
source "${EXEC_DIR}/lib/rtfm.sh"
source "${EXEC_DIR}/lib/dependencies.sh"
source "${EXEC_DIR}/lib/args.sh"
