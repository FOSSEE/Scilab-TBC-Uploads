//Exa 1.10
clc;
clear;
close;
//given data :
le=200;//in m
Irms=200;//in A
f=300;//in KHz
r=10;//in Km
c=3*10^8;//speed of light i m/s
lambda=c/(f*1000);//in m
Erms=120*%pi*le*Irms/(lambda*r*10^3);//in V/m
disp(Erms,"Field strength at 10Km distace in V/m: ");
Rr=(160*(%pi)^2)*(le/lambda)^2;//in Ohm
W=Irms^2*Rr;//in Watts
disp(W/10^6,"Radiated Power in MWatts : ");
//Note : Answer is wrong in the book. Unit of answer in the book is written mW instead of MW by mistake.