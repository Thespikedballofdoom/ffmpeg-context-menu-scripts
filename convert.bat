set i=%~n1
set x=%~x1
set o=%i%.mp4
if exist %o% (
  set o=%i%-h264crf0.mp4
)
ffmpeg -i "%i%%x%" -vcodec libx264 -preset veryslow -strict -2 -acodec aac -crf 0 -qp 0 -movflags +faststart "%o%"
exit
