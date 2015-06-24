//Exa 3.12
clc;
clear;
close;
//given data :
L=10;//in m
f=1.5;//in MHz
f=f*10^6;//in Hz
X=350;//in Ohm
Q=100;//Coil parameter
c=3*10^8;//speed of light in m/s
lambda=c/f;//in Meter
l_eff=2*L/2;//in m
Re=2*X/Q;//in Ohm
Rr=40*%pi^2*(l_eff/lambda)^2;//in hm
Gd=(3/2)*(lambda^2/(4*%pi));//unitless
ETA=Rr/(Rr+Re);//Efficiency unitless
Gp=Gd*ETA;////unitless
disp(ETA*100,"Antenna Efficiency in % : ");
disp(Gp,"Power gain : ");
//Note : Answer of Gp is wrong in the book.