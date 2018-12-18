#!/bin/bash

echo "1 for .png to .jpg"
echo "2 for .jpg to .png"
read choice

if [[ choice == 1 ]]; then
    for image in *.png; do
	convert "$image" "${image%.png}.jpg"
	echo "image $image converted to ${image%.png}.jpg"
    done
    exit 0
    else
    for image in *.jpg; do
	convert "$image" "${image%.jpg}.png"
	echo "image $image converted to ${image%.jpg}.png"
    done
    exit 0
fi
