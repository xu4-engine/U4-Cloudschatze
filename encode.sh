# Flac links are from https://www.youtube.com/watch?v=fJmggOYp838

#FFM=~/apps/ffmpeg-6.0-amd64-static/ffmpeg

for BN in U4BRITANNIA_MT U4CASTLE_MT U4COMBAT_MT U4DUNGEON_MT U4FANFARE_MT \
          U4SHOPPING_MT U4SHRINES_MT U4TOWNS_MT U4WANDERER_MT
do
	if [ ! -f $BN.flac ]; then
		wget https://www.symphoniae.com/synth/Roland/MT32/FLAC/$BN.flac
	fi
	oggenc --resample 44100 -o music/$BN.ogg $BN.flac
	#$FFM -i $BN.flac -acodec libvorbis -ar 44100 -ac 2 music/$BN.ogg
done
