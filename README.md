# ffmpeg context menu scripts
shit to make your life easier, with & without lossless 
# About
This will add 4 ffmpeg video scripts to your files' context menu. The scripts convert any given video to h264 in .mp4.

[-CRF 0 -QP 0] Lossless encode, but not playable in certain odd video players, like in steam chat.  
[-CRF 15] "Visually lossless" encode, but anyone that looks hard will see it's lossy. Far better filesize than -crf 0 though.   
[-CRF 25] lossy encode, very good filesize though   
[-CRF 0 -QP 0 YUV] as good a quality encode as dumb players will allow. 

video output name will match the video you select & append h264_(your choice)
If you want to modify this it's the fourth line in all of the scripts. change h264_ to whatever.
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
