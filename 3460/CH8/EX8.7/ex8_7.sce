clc;
clear all;
f=4*1e9;//given operating frequency
c=3*1e8;//velocity of light in vacume
d=6;//size of dish antenna in foot
//part a
l=c/f;//wavelength
disp(l,'lemda in meters is:');
//part b
bw=70*l/2;//beam width
disp(bw,'beam width of the signal is=');
//part c
Ap=d*4/(l*l);//gain of an antenna
disp(Ap,'gain of antenna is=');
