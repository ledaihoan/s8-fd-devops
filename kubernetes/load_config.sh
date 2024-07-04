#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Function to parse YAML file
parse_yaml() {
    local yaml_file="$1"
    while IFS=': ' read -r key value; do
        if [[ $key && $value && $key != "#"* ]]; then
            export "$key"="$value"
        fi
    done < <(grep -vE '^\s*#' "$yaml_file")
}

if [ -n "$1" ]; then
  DEPLOYMENT_ENV=$1
else
  DEPLOYMENT_ENV=development
fi
parse_yaml $CURRENT_DIR/$DEPLOYMENT_ENV/cluster-config.yaml