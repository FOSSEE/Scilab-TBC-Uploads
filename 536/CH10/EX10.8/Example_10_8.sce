clc;
clear;

printf("Example 10.8\n")

L=825e-3; //length of the tube
d=15e-3; //diameter of the tube
P_i=7.5e3; //Partial pressure of ammonia at inlet
P_o=2e3; //Partial pressure of ammonia at inlet
A_r=2e-5; //Air rate
P=101.3e3; //Atmospheric pressure

D_F_m=(P_i-P_o)/log(P_i/P_o);//Mean driving force
A_absorbd=A_r*((P_i/(P-P_i))-(P_o/(P-P_o)));
A_w=%pi*d*L;//Wetted surface
K_G=(A_absorbd/(A_w*D_F_m));//Overall transfer coefficient
printf("\n Overall Transfer coefficient = %.2f * 10^-9 kmol/[m^2 s (N/m^2)]",K_G*1e9)