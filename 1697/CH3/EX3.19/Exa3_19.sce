//Exa 3.19
clc;
clear;
close;
//given data
format('v',9);
D=6;//in meter
f=10;//in GHz
f=f*10^9;//in Hz
Aactual=%pi*D^2/4;//in m^2
Ae=0.6*Aactual;//in m^2
c=3*10^8;//speed of light in m/s
lambda=c/f;//in Meter
G=4*%pi*Ae/lambda^2;//Unitless
Gdb=10*log10(G);//gain in dB
BWFN=140*lambda/D;//in degree
disp(G,"Gain : ");
disp(Gdb,"Gain in dB : ");
disp(BWFN,"Beamwidth in degree : ");
disp(Ae,"Capture Area in m^2 : ");
//Note : Answer in the book is not accurate.