//Caption:Calculate the resonant frequency of a circular cavity resonator
//Exa:5.3
clc;
clear;
close;
//Given:
d=12.5;//diameter(in cm)
c=3*10^10;//in cm/s
l=5;//length(in cm)
a=d/2;
//For TM012 mode:
n=0;
m=1;
p=2;
P=2.405;
f=(c/(2*%pi))*[(P/a)^2+(p*%pi/d)^2]^0.5;
disp(f/10^9,'Resonant frequency (in GHz) =');

//Answer in book in wrongly given as 6.27GHz 