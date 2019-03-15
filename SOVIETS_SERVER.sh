#!/usr/bin/env bash

name="Server"
collection="SOVIETS"

# Read in non-mod args
args=""
while read LINE;
    #do echo "$LINE"
    do args="$args $LINE"
done < server_args.txt

args="$args mod=\""
while read LINE;
    do args="$args$LINE"
done < base_mods.txt
while read LINE;
    do args="$args$LINE"
done < soviets_mods.txt
args="$args\""

exe=C:/Program\ Files\ \(x86\)/Steam/steamapps/common/Arma\ 3\ Server/arma3server_x64.exe

echo "Starting ${collection} ${name} using ${exe}${args}"

${exe}${args}
