#!/bin/bash

# 源目录和目标目录，请根据实际情况修改
src_dir="/home/zzh/web/zanezii.github.io"
dest_dir="/mnt/hgfs/web/zanezii.github.io"

# 使用find命令复制非隐藏的文件和目录结构，排除隐藏目录
find "$src_dir" -type f -not -path '*/\.*' -exec cp --parents {} "$dest_dir" \;
find "$src_dir" -type d -not -path '*/\.*' -not -name '.*' -exec sh -c 'mkdir -p "$1/$2" && cp -r "$0"/* "$1/$2"' {} "$dest_dir"{} \;

# 注意：
# 1. 这个脚本会尝试保持源目录的结构（对于非隐藏目录），同时排除隐藏目录。
# 2. `--parents`选项用于在复制文件时保留其路径信息。
# 3. 对于目录的处理，我们创建对应目录结构后仅复制非隐藏内容，确保不复制隐藏子目录。