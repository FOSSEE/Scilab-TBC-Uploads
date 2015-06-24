// Exa 5.14
format('v',7);clc;clear;close;
// Given data
P = 10;// in ohm
Q = 10;// in ohm
S = 10;// in ohm
// For first balance
p = 30000;// in ohm
q = 25000;// in ohm
R_AB = (P*p)/(P+p);// in ohm
R_BC = (Q*q)/(Q+q);// in ohm
// R_AB*R = R_BC*S;
R = (R_BC/R_AB)*S;// in ohm
disp(R,"The value of R for first balance in Ω is");
// For second balance
p = 15000;// in ohm
q = 40000;// in ohm
R_AB = (P*p)/(P+p);// in ohm
R_BC = (Q*q)/(Q+q);// in ohm
// R_AB*S = R_BC*R;
R = (R_AB/R_BC)*S;// in ohm
disp(R,"The value of R for second balance in Ω is");
