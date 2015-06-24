// Exa 2.25
clc;
clear;
close;
format('v',8)
// Given data
V = 250;// in V
R1 = 10;// in ohm
R2 = 10;// in ohm
R3 = 10;// in ohm
R4 = 10;// in ohm
I2 = 20;// in A.
//Applying KVL in GEFHG :  -R1*I1-R2*I1-R2*I2 + V = 0;
I1= (V-R2*I2)/(R1+R2);// in A
V_AB= R3*I2+V-R1*I1;// in V
Vth = V_AB;// in V
Rth = (R1*R2)/(R1+R2)+R3+R4;// in ohm
R_L = Rth;// in ohm
disp(R_L,"The value of R_L in ohm is");
Pmax = (Vth^2)/(4*R_L);//maximum power  in W
disp(Pmax,"The value of maximum power in W is");
