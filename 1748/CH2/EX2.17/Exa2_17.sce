//Exa 2.17
clc;
clear;
close;
//Given data :
P=12;//no. of poles
f=50;//in Hz
R2=0.5;//in ohm
N=475;//in rpm
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//unitless
X2=R2/S;//in ohm
disp("At maximum torque, Tmax is proportional to 1/2*X2 or 1/20");
disp("Now if a resistance R is to be inserted in series with each phase of the rotor to reduce the starting torque to 1/3 of maximum torque, then");
disp("Ts is proportional to (R2+R)/((R2+R)^2+X2^2)");
disp("Also, Ts is proportional to 1(20*3)");
disp("Equating the two eqn we have : (0.5*R)/(R2+R)^2+X2^2");
//R^2-59R+70.25=0 : 
//coefficients :
a=1;b=-59;c=70.25;
R=(-b-sqrt(b^2-4*a*c))/(2*a);
disp(R,"Resistance R to be inserted in series (in ohm) :");
//Note : answer in the book is wrong.