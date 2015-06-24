//ex6.3
I_E=3.8*10^-3;
B_ac=160;
R1=22*10^3;
R2=6.8*10^3;
R_s=300;
V_s=10*10^-3;
r_e=25*10^-3/I_E;
R_in_base=B_ac*r_e;
R_in_tot=(R1*R2*R_in_base)/(R_in_base*R1+R_in_base*R2+R1*R2);
V_b=(R_in_tot/(R_in_tot+R_s))*V_s;
disp(V_b,'voltage at the base of the transistor in volts')