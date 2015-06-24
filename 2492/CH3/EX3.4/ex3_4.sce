// Exa 3.4
format('v',6)
clc;
clear;
close;
// Given data
R_L = 18;// in ohm
Vz = 18;// in V
V1 = 22;// in V
V2 = 28;// in V
// Minimum voltage across R,
V = V1-Vz;// in V
Izmin = 200;// in mA
I_Lmax = Vz/R_L;// in A
I = I_Lmax+Izmin*10^-3;// in A
R =V/I;// in ohm
disp(R,"The value of R in ohm is : ")
I1 = (V2-Vz)/R;;// in A
// The maximum current through R 
Izmax = I1 - 1;// in A
Izmax= Izmax*10^3;// in mA
disp(Izmax,"The maximum current through R in mA is");
disp("Which is within the limit of Iz (max) provided.")
pd = Vz*Izmax*10^-3;// maximum power dissipated in W
disp(pd,"The maximum power dissipated in W is");
