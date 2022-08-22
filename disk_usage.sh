#!/usr/bin/bash
dir="$1"
if [-d/ $dir]; then
	echo -e "checking disk usage in $dir\n"
else
	echo -e "$dir is not a directory"
	exit 101
fi
echo "heaviest folder in $dir in: "
top1=$(du /home/pyprep02 -d 1 2>/dev/null | sort -rn | head -n 1 | \tail - n 1|cut -f 2)
disk=$(du /home/pyprep02 -d 1 2>/dev/null | sort -rn | head -n 1 | \tail - n 1|cut -f 1)
echo -e "$top1 with disk usage of $disk"
