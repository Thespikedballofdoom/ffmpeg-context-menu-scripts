# ffmpeg context menu scripts
shit to make your life easier, with & without lossless 
# About
This will add 4 ffmpeg video scripts to your files' context menu. The scripts convert any given video to h264 in .mp4.

[-CRF 0 -QP 0] Lossless encode, but not playable in certain rare not-modern video players. Works in most messengers   
[-CRF 15] "Visually lossless" encode, but anyone that looks hard will see it's lossy. Far better filesize than -crf 0 though.   
[-CRF 25] lossy encode, very good filesize though   
[-CRF 33] even more loss, even better filesize

Last 3 options will convert to YUV color (4:2:0) since it makes discord thumbnails not break. they're playable regardless, remove -pix_fmt yuv240p from the scripts if you don't want this

video output name will match the video you select & append h264(your choice)
If you want to modify this it's the fourth line in all of the scripts. change whatever.
# Modifying the scripts
if you want to modify any of the scripts but don't know what to do, you can read up on the encoder settings here, they aren't terribly complicated:
https://trac.ffmpeg.org/wiki/Encode/H.264

Also if you want to change the order of the options in the context menu, you can go in [HKEY_CLASSES_ROOT\*\shell\] in regedit
and add a zero-width character (https://unicode-explorer.com/c/200C) to the start or middle of the context menu key name.
# Install
Make sure you have ffmpeg installed and added to PATH, so that typing ffmpeg into the command line works.
(if you aren't getting a grid from the edit environment variables button, I was frustrated too, you have to click path and then path in the below box)
Create a folder called videocontextmenu in the base C: directory, and drag all of the .bat scripts into it.
Execute "ffmpeg encodes in video context menus.reg"
# Uninstall
go in regedit, to [HKEY_CLASSES_ROOT\*\shell\], and delete the Video: to h264 keys & delete C:\videocontextmenu
# thanks
 [to kachurovskiy and his awesome original scripts](https://github.com/kachurovskiy/VideoContextMenu)
# extra
[Excellent guide on how to losslessly record with obs (use I444 color space in limited mode and normal libx264 if you actually want to edit or upload the video though)](https://web.archive.org/web/20210411135255/https://www.texpion.com/2018/07/obs-studio-settings-for-best-quality-recording.html)
