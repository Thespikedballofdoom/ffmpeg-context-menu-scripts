set i=%~n1
set x=%~x1
set o=%i%.mp4
if exist %o% (
  set o=%i%-h264crf33.mp4
)
ffmpeg -i "%i%%x%" -vcodec libx264 -acodec aac -preset slow -pix_fmt yuv420p -acodec aac -movflags +faststart "%o%"
exit
