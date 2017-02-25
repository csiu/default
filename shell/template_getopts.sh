#!/usr/bin/env bash
SCRIPT=$0
USAGE="""Usage: sh ${SCRIPT} [options]
Function:

Options:
-h          print help message
-x VARX     ...
"""

## print usage if no args
if [ $# == 0 ]; then echo "${USAGE}" && exit 1 ; fi

## user can pass args in any order using flags
while getopts hx: option
do
  case "${option}" in
    h) echo "$USAGE" && exit;;
    x) VARX=${OPTARG};;
  esac
done

## do something...
echo "Hello x="$VARX
