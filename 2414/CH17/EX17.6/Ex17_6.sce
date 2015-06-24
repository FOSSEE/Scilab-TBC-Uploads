clc;
close();
clear();
//page no 554
//prob no. 17.6
c=3*10^8;   //speed of light in m/s
f=5.925*10^9;   //Hz
lembda=c/f;   //m
mprintf('The wave length is %.3f cm \n',lembda*100)
theta_3dB=1.6;    // beamwidth degree
D=70*lembda/theta_3dB     //m
mprintf('The diameter is, D= %.3f m \n',D);
