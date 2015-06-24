// Exa 2.3
format('v',6)
clc;
clear;
close;
// Given data
t = 27;// in °C
t= t+273;// in °K
q= 1.6*10^-19;// electron charge in C
v = 200*10^-3;// in V
kt_by_q= 0.026;// in V
Io= 3*10^-7;// in A
// For large reverse bias I= Io*(%e^(q*v/(k*t)))
I= Io*(%e^(v/kt_by_q)-1);// in A
I= round(I*10^6);// in µA
disp(I,"The current flowing through the diode in µA is");
Idaso = Io*2^7;// in A
// r_ac = dv/di = 1/( Io*(1/kTdividedq)*(%e^(v/(kTdividedq))) );
r_ac = 1/( Io*(1/kt_by_q)*(%e^(v/(kt_by_q))) );
disp(r_ac,"The ac resistance in ohm is : ");
kt_by_q = 0.032;// in V
I1 = Idaso * ((%e^(v/(kt_by_q))) - 1);// in A
I1 = I1 * 10^3;// in mA
delI = I1-(I*10^-3);// in mA
disp(delI,"The increase in forward current in mA is");
