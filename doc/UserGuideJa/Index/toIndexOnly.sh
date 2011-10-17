#!/bin/sh
IndexMode="false"
(while read line
do
    if [[ "$IndexMode" = "true" ||  "$line" = "Index" ]];then
	IndexMode="true"
	echo $line
    fi
done
) | sed -e /^U-[0-9]*/d -e "/^Index U-[0-9]*/d"  -e /^Open∇FOAM-/d -e "s/, [UP]-[0-9]*.*$//"
