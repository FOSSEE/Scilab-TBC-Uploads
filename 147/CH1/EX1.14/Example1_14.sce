//Capacitance C, Energy stored in capacitor1 Ui
close();
clear;
clc;
C1 = 40 * 10^(-6);//F
Ui = 0.2;//J
C2 = 60*10^(-6);//F
//Initial charge on C1
Q1 = (2*Ui*C1)^(1/2);
//Final Voltage
V = Q1/(C1+C2);
Uf1 = 1/2*C1*V^2;
Uf2 = 1/2*C2*V^2;
//Final Energy
Uf = Uf1+Uf2;
mprintf('Final energy of the system, U = %0.2f J',Uf); 