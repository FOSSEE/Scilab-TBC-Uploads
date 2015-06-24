//clc();
clear;
//To determine the capacitance and charge on the plates
A=10^-2;            //area of capacitor m^2
d=10^-2;            //seperation of capacitor plates in m
V=100;              //potential in V
epsilon0=8.85*10^-12;
C=(A*epsilon0)/d;
C=C*10^12;          //converting into PF
printf("capacitance of the capacitor is %f PF",C);
C=8.85*10^-12;
Q=C*V;
printf("charge on plates in C is");
disp(Q);
