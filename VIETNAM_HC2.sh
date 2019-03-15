#!/usr/bin/env bash

name="HC2"
collection="VIETNAM"

# Read in non-mod args
args=" -name=${name} -profile=${name}"

while read LINE;
    #do echo "$LINE"
    do args="$args $LINE"
done < headless_args.txt

args="$args mod=\""
while read LINE;
    do args="$args$LINE"
done < base_mods.txt
while read LINE;
    do args="$args$LINE"
done < vietnam_mods.txt
args="$args\""

exe=C:/Program\ Files\ \(x86\)/Steam/steamapps/common/Arma\ 3/arma3_x64.exe

echo "Starting ${collection} ${name} using ${exe}${args}"

${exe}${args}
