//Example 15 // Energy radiated and energy current
clc;
clear;
close;
//given data :
p=1.29;// in kg/m^3
a=.15*10^-2;// in m/s
n=76;// in Hz
E=2*%pi^2*n^2*a^2*p;
disp(E,"(a). Energy radiated,E(J/m^3) = ")
v=332;// in m/s
Ev=E*v;
disp(Ev,"(b). The energy  current,Ev(W/s) = ")
// energy current is calculated wrong in the textbook
