// Exa 13.5
clc;
clear;
close;
// Given data
C = 0.01;// in µF
C = C *10^-6;// in F
R_A = 2;// in  k ohm
R_A = R_A * 10^3;// in ohm
R_B = 100;// in k ohm
R_B = R_B * 10^3;// in ohm
T_HIGH = 0.693*(R_A+R_B)*C;// in s
T_HIGH = T_HIGH;// in sec
T_LOW = 0.693*R_B*C;// in s
T_LOW = T_LOW ;// in sec
T = T_HIGH + T_LOW;// in sec
f = 1/T;// in Hz
disp(f,"Frequency in Hz is");
D = (T_HIGH/T)*100;// in %
disp(D,"Duty cycle in % is");
