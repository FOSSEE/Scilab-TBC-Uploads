// Exa 5.10
format('v',5)
clc;
clear;
close;
// Given data
V = 5.7;// in V
V_BE = 0.7;// in V
R1 =10 * 10^3;// in ohm
R2 = 100 * 10^3;// in ohm
I_BQ = (V-V_BE)/(R1+R2);// in A
I_BQ = I_BQ * 10^3;// in mA
I_EQ = 100*I_BQ;// in mA
R1= 2;// in k ohm
R_L= 100*10^-3;// in k ohm
disp(I_EQ,"The value of I_EQ in mA is");
V_T = 0.026;// in V assumed
r_E = V_T/(I_EQ*10^-3);// in ohm
disp(r_E,"The value of r_E in ohm is");
Beta = 100;
h_fe= Beta;
r_pi = Beta*r_E;// in ohm
disp(r_pi,"The value of r_pi in ohm is : ")
ib= poly(0,'ib');
vb_by_ib= 0.572+101*1;// in k ohm
Ri= 10;// in k ohm
i1_by_ib= vb_by_ib/Ri;
is_by_ib= 1+i1_by_ib;
iL_by_ib= -h_fe*R1/(R1+R_L);
// Ai= iL/is = iL_by_ib/is_by_ib;
Ai= iL_by_ib/is_by_ib;
Rin= vb_by_ib/is_by_ib;// in k ohm
disp(Ai,"The value of Ai is : ")
disp(Rin,"The value of Rin in k ohm is : ")


