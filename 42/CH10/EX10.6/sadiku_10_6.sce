clear;
clc;
a=2*10^-3,b=6*10^-3,t=10^-3,l=2,c=5.8*10^7;
Ri=l/(c*%pi*a*a);
Ro=l/(c*%pi*((b+t)^2-b^2));
Rdc=Ro+Ri;
disp(Rdc*10^3,'Resistance in mOhm');