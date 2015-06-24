clc();
clear;
// To calculate the capacitance and charge
epsilon_0=8.854*10^-12;    //f/m
A=100;    //area in cm^2
A=A*10^-4;   //area in m^2
V=100;   //potential in V
d=1;   //plate seperation in cm
d=d*10^-2;    //plate seperation in m
C=(epsilon_0*A)/d;
Q=C*V;
printf("charge on the plates in F is");
disp(C);
printf("charge on the capacitor in coulomb is");
disp(Q);
