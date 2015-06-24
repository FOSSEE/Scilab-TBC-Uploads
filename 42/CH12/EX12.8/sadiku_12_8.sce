clear;
clc;
a=5*10^-2,b=4*10^-2,c=10*10^-2,C=5.8*10^7,Uo=4*%pi*10^-7;
f101=3.335*10^9;
d=sqrt(1/(%pi*f101*Uo*C));
Q=(a*a+c*c)*a*b*c/(d*(2*b*(a^3 + c^3)+a*c*(a*a+c*c)));
disp(Q,'Quality factor of TE101 = ');