#! /bin/bash
arr='i_am_hiding_stuff.txt'
while IFS= read -r line
do
	if [[ "$line" =~ 'HACK' ]]
	then
		echo 'line - '$(( i+1 ))
		echo $line
	fi
	i=$((i+1))
done < $arr
##printf '%s\n' "{arr[@]}" | grep HACK 
