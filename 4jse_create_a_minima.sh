#!/bin/bash

# Define a function to parse CLI arguments
parse_args() {
  while getopts ":h:p:" opt; do
    case $opt in
      h) HELP="true";;
      p) PARAM=$OPTARG;;
      \?) echo "Invalid option: -$OPTARG"; exit 1;;
    esac
  done
}

# Define a function to print help message
print_help() {
  echo " Minimalist CLI tool parser"
  echo " Usage: $0 [-h] [-p <param>]"
  echo "   -h  Show this help message"
  echo "   -p  Set a parameter"
}

# Parse CLI arguments
parse_args "$@"

# Print help message if requested
if [ ! -z "$HELP" ]; then
  print_help
  exit 0
fi

# Process parameter if provided
if [ ! -z "$PARAM" ]; then
  echo "Parameter set: $PARAM"
else
  echo "No parameter provided"
fi