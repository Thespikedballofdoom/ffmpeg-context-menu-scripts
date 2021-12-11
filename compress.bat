set i=%~n1
set x=%~x1
set o=%i%.mp4
if exist %o% (
  set o=%i%-h264crf25.mp4
)
ffmpeg -i "%i%%x%" -vcodec libx264 -acodec aac -pix_fmt yuv420p -movflags +faststart -crf 25 "%o%"
exit
