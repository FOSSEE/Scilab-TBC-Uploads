// EXa 13.11
clc;
clear;
close;
// Given data
C = 10;// in µF
C = C * 10^-6;// in F
T_off = 1;// in sec
//Formula T_off= 0.693*R2*C
R2 = T_off/(0.693*C);// in ohm
disp(R2,"The value of R2 in Ω is");
T_on = 3;// in sec
// Formula T_on= 0.693*(R1+R2)*C
R1 =T_on/(C*0.693)-R2;// in ohm
disp(R1,"The value of R1 in Ω is");
