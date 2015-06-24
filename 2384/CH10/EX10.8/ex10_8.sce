// Exa 10.8
clc;
clear;
close;
format('v',6)
// Given data
V = 440;// in V
I_L =40;// in A
Rse = 1;// in ohm
Rsh = 200;// in ohm
Ra = 0.5;// in ohm
Ish = V/Rsh;// in A
Ia = I_L+Ish;// in A
Eg = V + (Ia*(Ra+Rse));// in V
disp(Eg,"The generated voltage for long shunt in V is");
//Voltage across shunt field, Vsh = V + Ise*Rse = V + (I_L*Rse);
Vsh = V+(I_L*Rse);// in V
Ish = Vsh/Rsh;// in A
Ia =I_L+Ia;// in A
Eg = V + (I_L*Rse) + (Ia*Ra);// in V
disp(Eg,"The generated voltage for short shunt in V is");
