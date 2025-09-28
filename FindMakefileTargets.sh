#!/bin/bash

awk '/^[[:alnum:]_-]+[[:space:]]*:/ { 
    gsub(/:.*/, ""); 
    gsub(/^[[:space:]]+|[[:space:]]+$/, ""); 
    if ($0 != "") print "make --dry-run --silent " $0 
}' Makefile | sort -u
