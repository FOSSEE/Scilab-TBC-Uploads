// Exa 8.11
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 25;// in V
R1 = 180;// in k ohm
R1 = R1*10^3;// in ohm
R2 = 20;// in k ohm
R2 = R2 * 10^3;// in ohm
R_C2 = 20;// in k ohm
R_C2 = R_C2 * 10^3;// in ohm
R_C1 = R_C2;// in ohm
R_E1 = 1.8;// in k ohm
R_E1 = R_E1 * 10^3;// in ohm
R_E2 = 4.3;// in k ohm
R_E2 = R_E2 * 10^3;// in ohm
R_L = 30;// in k ohm
R_L = R_L * 10^3;// in ohm
V_BE = 0.7;// in V
Beta2 = 50;// unit less
Beta1 = 50;// unit less
V_Th1 = (V_CC/(R1+R2))*R2;// in V
R_Th1 = (R1*R2)/(R1+R2);// in  ohm
I_B = (V_Th1-V_BE)/( R_Th1+((Beta1+1)*R_E1) );// in A
I_E1 = (Beta1+1)*I_B;// in A
V_T = 25;// in mV
V_T = V_T * 10^-3;// in V
r_e1 = V_T/I_E1;// in ohm
I_C1 = I_E1;// in A
V_C1 = V_CC-(I_C1*R_C1);// in V
//V_E2 = V_B2-V_BE = V_C1-V_BE;// in V
V_E2 = V_C1-V_BE;// in V
I_E2 = V_E2/R_E2;// in A
r_e2 = V_T/I_E2;// in ohm
Rac2 = (R_C1*R_L)/(R_C1+R_L);// in  ohm
Av2 = -Rac2/(r_e2+R_E2);// voltage gain of second stage 
Rac1 = (R_C1*(Beta1*(r_e2+R_E2)))/(R_C1+(Beta1*(r_e2+R_E2)));// in ohm
Av1 = -Rac1/(r_e1+R_E1);// voltage gain of first stage 
Av = Av1*Av2;// voltage gain
disp(Av,"The voltage gain is");
r_in = R1*R2*Beta1*(r_e1+R_E1)/( (R1*R2)+(R2*(Beta1*(r_e1+R_E1)))+((Beta1*(r_e1+R_E1))*R1) );// in ohm
r_in= r_in*10^-3;// in k ohm
disp(r_in,"The input resistance in k ohm is");
