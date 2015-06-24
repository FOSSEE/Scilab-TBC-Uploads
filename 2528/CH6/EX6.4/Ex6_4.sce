//Example6.4:"Determine the approx Bandwidth""
//Page 191
clear;
clc;
Refresh=60;
Height=1024;
Width=1024;
Pixelrate=Refresh*Height*Width;
disp("pixels per second",Pixelrate,"Pixelrate");
Tr=1/Pixelrate;
f2=0.35/(0.3*Tr);
disp("Hz",f2,"f2");
//Result//
