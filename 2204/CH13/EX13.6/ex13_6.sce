// Exa 13.6
clc;
clear;
close;
// Given data
C = 1;// in µF
C = C * 10^-6;// in F
R_A = 4.7;// in k ohm
R_A = R_A * 10^3;// in ohm
R_B = 1;// in k ohm
R_B = R_B * 10^3;// in ohm
T_on = 0.693*(R_A+R_B)*C;// in s
T_on = T_on;// in sec
disp(T_on * 10^3,"Positive pulse width in ms is");
T_off = 0.693*R_B*C;// in s
T_off = T_off;// in ms
disp(T_off * 10^3,"Negative pulse width in ms is");
f = 1.4/((R_A+2*R_B)*C);// in Hz
disp(f,"Free running frequency in Hz is");
D = ((R_A+R_B)/(R_A+(2*R_B)))*100;// in %
disp(D,"The duty cycle in % is");
