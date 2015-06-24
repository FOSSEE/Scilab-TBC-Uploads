// Exa 3.12
clc;
clear;
close;
// Given data
Io= 1;// in micro amp
Io=Io*10^-6;// in amp
V_F= 0.52;// in V
V_R= -0.52;// in V
nita= 1;
T=300;// in K
V_T= T/11600;// in volt
V_T=round(V_T*10^3);// in mV

// (i)
r_F= nita*V_T*10^-3/(Io*%e^(V_F/(nita*V_T*10^-3)));
disp(r_F,"Dynamic resistance in the forward biased condition in ohm")

// (ii)
r_r= nita*V_T*10^-3/(Io*%e^(V_R/(nita*V_T*10^-3)));
disp(r_r,"Dynamic resistance in the reverse biased condition in ohm")
