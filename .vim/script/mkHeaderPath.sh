#!/bin/bash

TMP_1=0
TMP_2=0

echo "Header Path Create Start"

if [ -f .syntastic_header_config.conf ]; then
	rm .syntastic_header_config.conf
fi

find ./ -name "*.h" -o -name "*.hpp" > header

while read line; do

	TMP_2=`dirname $line`

	if [ "$TMP_1" == "$TMP_2" ]; then
		continue;
	fi

	dirname $line >> syntastic_header_config
	TMP_1=`dirname $line`

done < header

sed "s/\.\//\-I/" syntastic_header_config > .syntastic_header_config.conf 

rm syntastic_header_config
rm header

exit 0
