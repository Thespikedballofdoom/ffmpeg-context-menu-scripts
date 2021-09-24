set i=%~n1
set x=%~x1
set o=%i%.mp4
if exist %o% (
  set o=%i%-h264_yuv240p.mp4
)
ffmpeg -i "%i%%x%" -vcodec libx264 -preset veryslow -acodec aac -movflags +faststart -crf 1 -vf format=yuv420p "%o%"
exit
