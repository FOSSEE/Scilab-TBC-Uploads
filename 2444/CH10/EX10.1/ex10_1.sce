// Exa 10.1
clc;
clear;
close;
format('v',5)
// Given data
R2 = 5;// in k ohm
R2 = R2 * 10^3;// in  ohm
R1 = R2;// in ohm
R_B = R2;// in ohm
R4 = 0.4;// in k ohm
R4 = R4 * 10^3;// in ohm
R3 = R4;// in ohm
R_C = R4;// in ohm
C2 = 0.02;// in µF
C2 = C2 * 10^-6;//  in F
C1 = C2;// in F
C = C2;// in F
T = 1.386*R_B*C;// in sec
T= T*10^3;// in ms
disp(T,"The time period in ms is");
f = 1/T;// in kHz
disp(f,"The frequency of circuit oscillation in kHz is");
Beta_min = R_B/R_C;//minimum value of transistor ß 
disp(Beta_min,"The minimum value of transistor ß is");
