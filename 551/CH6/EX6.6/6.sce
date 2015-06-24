clc
m=60; //kg
T1=333; //K
T0=279; //K
p=1; //atm
cp=4.187;

//dW=-m*cp*(1-T0/T)dT
//Wmax=Available energy
Wmax=integrate('m*cp*(1-T0/T)', 'T', T0, T1);
Q1=m*cp*(T1-T0);

//Let unavailable energy=E
E=Q1-Wmax;
disp("unavailable energy = ")
disp(E)
disp("kJ")