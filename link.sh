#!/bin/bash
set -euox pipefail 

BACKUP_DIR=/tmp/dotconfig_backup/profileconfig
DIR="$(cd "$(dirname "$0")"; pwd -P)"

rm -rf $BACKUP_DIR
mkdir -p $BACKUP_DIR
[ -e ~/.bashrc ] && mv ~/.bashrc $BACKUP_DIR
ln -sf $DIR/bashrc ~/.bashrc
