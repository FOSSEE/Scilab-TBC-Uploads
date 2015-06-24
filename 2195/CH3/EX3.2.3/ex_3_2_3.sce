//Example 3.2.3 // resistance
clc;
clear;
close;
//given data :
Tc=240*10^-6;//in Nm
N=100;
L=40*10^-3;
d=30*10^-3;
B=1;//in Wb/m^2
TdBYI=N*B*L*d;
I=Tc/TdBYI;
//voltage per division=I*(R/100)
R=100/I;
disp(R*10^-3,"resistance ,R(k-ohm) = ")
//UNIT IS TAKEN WRONG IN THE BOOK
