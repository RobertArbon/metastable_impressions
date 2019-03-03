#!/bin/bash

IMAGES=target_samples
for PHOTO in $IMAGES/*.tga
  do
      echo $PHOTO
      BASE=`basename $PHOTO`
      convert "$PHOTO" "$IMAGES/$BASE.jpg"
  done
