//ex10.10
B_ac=125;
C_be=20*10^-12;
C_bc=2.4*10^-12;
R1=22*10^3;
R2=4.7*10^3;
R_E=470;
R_S=600;
R_L=2.2*10^3;
V_CC=10;
V_B=(R2/(R1+R2))*V_CC;
V_E=V_B-0.7;
I_E=V_E/R_E;
r_e=25*10^-3/I_E;
//total resistance of input circuit is parallel combination of R1,R2,R_s,B_ac*r_e
R_in_tot=B_ac*r_e*R1*R2*R_S/(B_ac*r_e*R1*R2+B_ac*r_e*R1*R_S+B_ac*r_e*R2*R_S+R1*R2*R_S);
R_c=R_C*R_L/(R_C+R_L)
A_v_mid=R_c/r_e;
C_in_Miller=C_bc*(A_v_mid+1)
C_in_tot=C_in_Miller+C_be;
f_c=1/(2*%pi*R_in_tot*C_in_tot);
disp(R_in_tot, 'total resistance of circuit in ohms')
disp(C_in_tot,'total capacitance in farads')
disp(f_c,'critical frequency in hertz')