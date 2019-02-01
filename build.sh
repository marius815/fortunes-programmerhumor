#!/bin/sh

cmd=$(command -v strfile)
input="fortunes/programmerhumor.txt"
output="programmerhumor.dat"
outputdir="output"

[ -z "$cmd" ] && echo "[!] Could not find strfile" && exit 1
[ -x "$cmd" ] || { echo "[!] strfile is not executable" && exit 1; }

echo "Creating fortunes data file..."

${cmd} -c % ${input} ${output}

if [ "$?" -eq "0" ]; then

    rm -rf ${outputdir}
    mkdir ${outputdir}

    tmpfn=${input##*/}
    fn=${tmpfn%.*}

    cp -a ${input} ${outputdir}/${fn}
    mv ${output} ${outputdir}/

    echo
    echo "Success. To use the data file, copy it to the fortunes"
    echo "data directory, usually /usr/share/games/fortunes and"
    echo "then run it with the command:"
    echo "fortune ${output%.*}"
fi
