//Example No. 15.13.1
clc;
clear;
close;
format('v',8);

Eta=0.9;//refractive index
f_MUF=10;//MHz
H=400;//km
Nm=(1-Eta^2)*(f_MUF*10^6)^2/81;//per m^3
fc=9*sqrt(Nm);//Hz
Dskip=2*H*sqrt((f_MUF*10^6/fc)^2-1);//km
disp(Dskip,"Skip distance or range in km : ");
