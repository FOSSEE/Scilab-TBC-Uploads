// Exa 2.4
clc;
clear;
close;
// Given data
Rs= 2;// in k ohm
Rs=Rs*10^3;// in ohm
RL= 5;// in k ohm
RL=RL*10^3;// in ohm
Rin= 100;// in k ohm
Rin=Rin*10^3;// in ohm
Rout= 50;// in ohm
A=10^5;
Vout= 10;// in volt
// V1= Vs*Rin/(Rin+Rs) = Vs*100/102       (i)
// V2/(5 kohm)+ V2/(100 kohm) + (V2-10^5*(V1-V2))/50 = 0
// or 20*V2 + V2 + 2*10^3*V2 = 2*10^8*(V1-V2)
// or V2*(20+1+2*10^3+2*10^8)= 2*10^8*V1
// or V1=V2 (approx)
// For
V_out= 10;// in volt
V1=10;// in volt
V2=V1;
Vs= (Rin+Rs)/Rin*V1;// in volts
V_out_BY_Vs= V_out/Vs;//in volts
disp(Vs,"Value of Vs in volts");
disp(V_out_BY_Vs,"Value of V_out/Vs ")
disp(Rin*10^-3,"Input resistance of circuit in kohm")
