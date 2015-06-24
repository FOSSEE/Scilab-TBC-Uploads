// Example 4.9 : Design of given circuit to obtain I_D=0.5mA
I_d=0.5*10^-3; // (A)
I_S=0.5*10^-3; // (A)
V_t=1:0.5:1.5; // (V)
K_n=1*10^-3; // K_n=k_n*W/L (A/V^2)
V_DD=15; // (V)
V_D=10; // (V)
V_S=5; // (V)
R_D=(V_DD-V_D)/I_d;
R_S=V_S/I_S;
V_OV=sqrt(I_d*2/K_n);
V_GS=V_t+V_OV;
V_G=V_S+V_GS;
// V_t=1.5V
// I_D=K(V_GS-V_t)^2/2
// 7=V_GS+10I_D
// solving above equations 
I_D=0.455*10^-3;
deltaI_D=I_D-I_d; // Change in I_D (A)
change=deltaI_D*100/I_d; // Change in %
disp(change,"Change in I_D (%)")