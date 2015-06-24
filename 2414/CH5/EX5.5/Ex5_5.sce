clc;
clear all;
//page no 152
//prob no. 5.5

//for input spectrum
f=[-20:.001:20];   //x axis
V=[1 zeros(-20+.001:.001:20-.001) 1];      //y axis
clf;
subplot(211);
plot2d(f,V,[5],rect=[-130,0,130,2])
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";
xtitle('Input Spectrum','f,kHz','');
xgrid

//for output spectrum
f=[-120:.01:120];      //x axis
V=[1 zeros(-120+.01:.01:-80-.01) 1 zeros(-80+.01:0.01:80-0.01) 1 zeros(80+.01:.01:120-.01) 1]
subplot(212);
plot2d(f,V,[5],rect=[-130,0,130,2])
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";
xtitle('Output Spectrum','f,kHz','');
xgrid
