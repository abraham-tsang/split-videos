#/bin/bash


# loop
for i in *.mp4; do
  # create folder
    mkdir ${i%".mp4"}

    # split file into 5 min chunk

      # get mp4 total duration
      originalDuration=$(ffprobe -i $i -show_entries format=duration -v quiet -of csv="p=0")

      # decide how many times to split considering each splitted video should be 5 min or less
       loopTimes=$(awk "BEGIN {print int(($originalDuration+300-1)/300); exit}")
       loopTimes=$((loopTimes))

      # loop according to times
      for (( j=0; j < $loopTimes; j++))
      do
        # split 1 video of 5 min
        ffmpeg -i $i -ss $((j*5*60)) -t 00:05:00 $j.mp4
        # move splitted video into folder
        mv $j.mp4 ${i%".mp4"}
      done
done
