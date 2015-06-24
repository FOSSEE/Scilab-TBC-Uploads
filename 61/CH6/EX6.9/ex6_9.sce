//ex6.9
R_E=10^3;
R_L=10^3;
R1=18*10^3;
R2=18*10^3;
B_ac=175;
V_CC=10;
V_BE=0.7;
V_in=1;
//ac emitter resistance R_e
R_e=(R_E*R_L)/(R_E+R_L);
//resistance from base R_in_base
R_in_base=B_ac*R_e;
//total input resiatance R_in_tot
R_in_tot=(R1*R2*R_in_base)/(R1*R2+R1*R_in_base+R2*R_in_base);
disp(R_in_tot,'total input resistance in ohms')
V_E=((R2/(R1+R2))*V_CC)-V_BE;
I_E=V_E/R_E;
r_e=25*10^-3/I_E;
A_v=R_e/(r_e+R_e);
disp(A_v,'voltage gain')
//ac emitter current I_e
//V_e=A_v*V_b=1V
V_e=1;
I_e=V_e/R_e;
I_in=V_in/R_in_tot;
A_i=I_e/I_in;    //current gain
disp(A_i,'current gain')
A_p=A_i;    //power gain
//since R_L=R_E, one half of the total power is disspated to R_L
A_p_load=A_p/2;
disp(A_p_load,'power gain delivered to load')
