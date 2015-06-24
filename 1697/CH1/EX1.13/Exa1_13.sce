//Exa 1.13
clc;
clear;
close;
//given data :
r=1;//in Km
r=1*10^3;//in m
l=1;//in m
Irms=10;//in A
f=5;//in MHz
c=3*10^8;//speed of light i m/s
lambda=c/(f*10^6);//in m
le=2*l/%pi;//in m
Erms=120*%pi*le*Irms/(lambda*r);//in V/m
disp(Erms,"Field strength at 10Km distace in V/m: ");
//Note : Answer in the book is wrong. Mistake during value putting.