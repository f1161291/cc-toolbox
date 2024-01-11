#!/bin/bash

# 设置默认参数值
n=500
tl=200
tll=20
tp=8443
sl=1
url="https://cf.tsnb.eu.org"

# 解析命令行参数
while [[ $# -gt 0 ]]; do
    case "$1" in
        -n)
            n="$2"
            shift 2
            ;;
        -tl)
            tl="$2"
            shift 2
            ;;
        -tll)
            tll="$2"
            shift 2
            ;;
        -tp)
            tp="$2"
            shift 2
            ;;
        -sl)
            sl="$2"
            shift 2
            ;;
        -url)
            url="$2"
            shift 2
            ;;
        *)
            echo "未知的选项: $1"
            exit 1
            ;;
    esac
done

# 运行 Cloudflare 命令
./CloudflareST -n "$n" -tl "$tl" -tll "$tll" -tp "$tp" -sl "$sl" -url "$url"
