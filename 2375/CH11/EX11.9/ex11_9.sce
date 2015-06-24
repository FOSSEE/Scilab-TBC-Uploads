// Exa 11.9
clc;
clear;
close;
format('v',5)
// Given data
L = 0.33;
Cs = 0.65;// in pF
Cs = Cs * 10^-12;// in F
C_M = 1;// in pF
C_M = C_M * 10^-12;// in F
R = 5.5;// in k ohm
R = R * 10^3;// in ohm
f_s = 1/(2*%pi*sqrt( L*Cs ));// in Hz
f_s= f_s*10^-6;// in MHz
disp(f_s,"The series resonant frequency in MHz is");
f_s= f_s*10^6;// in Hz
Ceq = (Cs*C_M)/(Cs+C_M);// in F
f_P = 1/(2*%pi*sqrt( L*Ceq ));// in Hz
f_P= f_P*10^-6;// in MHz
disp(f_P,"The parallel resonant frequency in MHz is : ")
f_P= f_P*10^6;// in Hz
P = ((f_P-f_s)/f_s)*100;// in %
disp("The parallel resonant frequency exceds series resonant frequency by "+string(P)+" % ");
Q = (sqrt(L/Cs))/R;
disp(Q,"The Q factor of the crystal is");
