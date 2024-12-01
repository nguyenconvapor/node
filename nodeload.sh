#!/bin/bash

# Đường dẫn đến thư mục chứa các script Python
script_dir="/root/node"

# Vòng lặp để chạy từng script
for i in {1..12}; do
    gnome-terminal --tab --title "node $i" -- bash -c "cd $script_dir; python3 node$i.py; exec bash" &
done