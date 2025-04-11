if [ $# -eq 0 ]
then
	echo "Usage: phone searchfor [... searchfor]"
	echo "(You didn't tell me what you want to search for.)"
else

	result=$(cat mydata.txt)
	for i in "$@"
	do
		result=$(echo "$result" | grep "$i")
	done
	echo "$result" > tmp
	awk -f display.awk tmp
fi
