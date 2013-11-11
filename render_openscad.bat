@ECHO OFF

SET PAGES_PATH=..\gh-pages\rfduino

ECHO Generating images
openscad.exe -o img\rfduino.png --render RFduino.scad

ECHO Generating STL files
openscad.exe -o stl\rfduino.stl --render RFduino.scad

ECHO Updating Pages
COPY img\rfduino.png %PAGES_PATH%\images\rfduino.png
COPY stl\rfduino.stl %PAGES_PATH%\stl\rfduino.stl
