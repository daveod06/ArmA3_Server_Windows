#!/usr/bin/env bash
source ~/.bashrc

# Read in non-mod args
args=" -name=HC1 -profile=HC1"
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
done < wwii_mods.txt
args="$args\""

exe=C:/Program\ Files\ \(x86\)/Steam/steamapps/common/Arma\ 3/arma3_x64.exe

echo "Starting Server using ${exe}${args}"

${exe}${args}
