#!/bin/bash

file=$1
perl -pi -e 's/^(\d)(\.*\s.*?)$/\n\<span id\=\"index$1\"\>\1\<\/span>\2/gis' $file;
perl -pi -e 's/\<sup\>(\d)\<\/sup\>/\<a href\=\"\#index\1\"\>\<sup\>\1\<\/sup\>\<\/a\>/gis' $file;
