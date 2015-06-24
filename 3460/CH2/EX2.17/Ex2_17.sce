clc;
//calculate emmiter resistance
R2=2.2*1e3 //in ohm
R1=10*1e3 //in ohm
Vcc=10 //in volt
V_B=1.8 //in volt
V_BE=0.7 //in volt
R_E=1*1e3 //in ohm
V_s=2*1e-3 //in volt
R_S=1*1e3 //in ohm
V_B=(R2*Vcc)/(R1+R2); //in volt
I_E=(V_B-V_BE)/R_E; //in ampere
r1=(25*1e-3)/I_E; //in ohm
//caculate input pmpedence seen by the base of transistor
B=150
Z_in_base=B*r1
disp(+'ohm',Z_in_base,'input pmpedence seen at the base of transistor')
//calculate ampplifier input impedence
a=(R1*R2)/(R1+R2);
Z_in=(a*Z_in_base)/(a+Z_in_base);
disp(+'ohm',Z_in,'ampplifier input impedence =')
//calculate input voltage seen at the base :
V_in_base=(Z_in*V_s)/(R_S+Z_in)
disp(+'volt',V_in_base,'input voltage seen at the base =')
//calculate unloaded voltage gain
//here minus sign is used to denote an inverted output
R_c=3.6*1e3 //in ohm
r=22.7 //in ohm
A_v_unl=-R_c/r
disp(A_v_unl,'unloaded voltage gain =')
//calculate unloaded output voltage :
V_out_unl=A_v_unl*V_in_base
disp(+'volt',V_out_unl,'unloaded output voltage =')
//calculate loaded a.c output voltage :
R_L=1.5*1e3 //in ohm
V_out=(R_L*V_out_unl)/(R_c+R_L)
disp(+'volt',V_out,'loaded a.c output voltage =')
