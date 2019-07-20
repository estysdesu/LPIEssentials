#!/usr/bin/env bash

base_dir=`pwd`
log_dir="/var/log"
ar_dir="$base_dir/archive"
back_dir="$base_dir/backup"
tar_file="log.tar"

echo "setting up"
mkdir -p "$ar_dir" "$back_dir"

echo "archiving all log files"
cd "$log_dir"
tar -cvf "$ar_dir/$tar_file" *.log
# cd "$base_dir"

echo "contents of tar archive"
tar -tf "$ar_dir/$tar_file"

echo "extracting tar archive"
tar -xf "$ar_dir/$tar_file" -C "/$back_dir"
