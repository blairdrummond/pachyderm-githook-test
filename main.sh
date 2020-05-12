#!/usr/bin/env sh

# Input:
#	 --input   Input  folder
#	 --output  Output folder

while test -n "$1"; do
	case "$1" in
		--input)
			shift
			INPUT="$1"
			;;

		--src)
			shift
			SRC="$1"
			;;

		--output)
			shift
			OUTPUT="$1"
			;;

		*)
			echo "Invalid option $1; allowed: --src --input --output" >&2
			exit 1
			;;
	esac
	shift
done

# I'm assuming that there is only one file in here.
# Note the -L
IN_FILE=$(find -L $INPUT | sed 1q)

python3 $SRC/src/fancy-program.py \
	--input "$IN_FILE" \
	--output "$OUTPUT"

echo "hey\n" > /pfs/out/hey
