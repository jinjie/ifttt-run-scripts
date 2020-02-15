#!/bin/bash

## Location of Dropbox-Uploader script: dropbox_uploader.sh
DROPBOXCMD=""

## Optional: We will use the tmp directory to store the commands.
## You can change this if you like
CMDDIR="/tmp/run-scripts/Remote_Commands"

## DO NOT EDIT

$DROPBOXCMD download / $CMDDIR

shopt -s nullglob dotglob
CMDFILES=($CMDDIR/*)

if [ ${#CMDFILES[@]} -gt 0 ];
then
    for file in $CMDDIR/*
    do
        bash "$file"
    done

    # Purge the files
    rm -f $CMDDIR/*

    # Delete all files in the dropbox folder so we do not run it the second time
    $DROPBOXCMD list | cut -d " " -f4- | tail -n +2 | while read item
    do
        $DROPBOXCMD delete "$item"
    done
fi
