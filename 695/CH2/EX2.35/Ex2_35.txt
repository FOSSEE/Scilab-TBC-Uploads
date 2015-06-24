//Caption:Determine the (a)no load speed  (b)Percentage reduction in flux per pole
//Exa:2.35
clc;
clear;
close;
V=220;//in volts
V_b=1;//in volts
R_f=110;//in ohms
R_a=0.14;//in ohms
I_o=7;//in amperes
I_f=2;//in amperes
I=90;//in amperes
N_1=700;//in rpm
I_ao=I_o-I_f;//in amperes
E_bo=V-I_ao*R_a-V_b;//in volts
I=55;//in amperes
I_a1=I-I_f;//in amperes
E_b1=V-I_a1*R_a-V_b;//in volts
N_o=E_bo*N_1/E_b1;
disp(N_o,'(a)no load speed (in rpm) =');
I_a2=35;//in amperes
N_2=900;//in rpm
E_b2=V-I_a2*R_a-V_b;//in volts
Phy_r=E_b2*N_1/(E_b1*N_2);
R=(1-Phy_r)*100;
disp(R,'(b)Percentage reduction in flux per pole (in %)=');