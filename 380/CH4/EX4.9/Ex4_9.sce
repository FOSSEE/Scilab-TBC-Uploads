//Caption:Find the (a) generator voltage (b) generator current (c) efficiency
//Exa:4.9
clc;
clear;
close;
//Refer to fig:4.29
//For region A
V_bA=230;//in Volts
S_bA=.46000;//Volt-Ampere
I_bA=S_bA/V_bA;//in Amperes
Z_bA=V_bA/I_bA;//in ohms
Z_g_pu=(0.023+%i*0.092)/Z_bA;
R_L_pu=0.023/Z_bA;
X_L_pu=0.069/Z_bA;
//For region B
//Per unit parameters on high-voltage side of the step-up transformer
V_bB=2300;//in Volts
S_bB=46000;//Volt-Ampere
I_bB=S_bB/V_bB;//in Amperes
Z_bB=V_bB/I_bB;//in ohms
R_H_pu=2.3/Z_bB;
X_H_pu=6.9/Z_bB;
R_cH_pu1=13800/Z_bB;
X_mH_pu1=6900/Z_bB;
Z_l_pu=(2.07+%i*4.14)/Z_bB;//Per-unit impedance of transmission line
//Per unit parameters on high-voltage side of the step-down transformer
X_mH_pu2=9200/Z_bB;
R_cH_pu2=11500/Z_bB;
//For region C
V_bC=115;//in Volts
S_bC=46000;//Volt-Ampere
I_bC=S_bC/V_bC;//in Amperes
Z_bC=V_bC/I_bC;//in ohms
R_L_pu=0.00575/Z_bC;
X_L_pu=0.01725/Z_bC;
V_L_pu=1*(cosd(0)+%i*sind(0));
I_L_pu=1*(cosd(-30)+%i*sind(-30));
E_l_pu=V_L_pu+(R_L_pu+%i*X_L_pu)*I_L_pu;
I_l_pu=I_L_pu+E_l_pu*(0.01-%i*(1/80));
E_g_pu=E_l_pu+I_l_pu*(0.02+%i*0.06+0.018+%i*0.036+0.02+%i*0.06);
I_g_pu=I_l_pu+E_g_pu*((1/120)-%i*(1/60));
V_g_pu=E_g_pu+I_g_pu*(0.02+0.02+%i*0.08+%i*0.06);
V_g=V_bA*V_g_pu;
disp(abs(V_g),'(a) Generator Voltage (in Volts)=');
disp(atand(imag(V_g)/real(V_g)),'Phase of generated voltage (in degree)=');
I_g=I_bA*I_g_pu;
disp(abs(I_g),'(b) Generator current (in Amperes)=');
disp(atand(imag(I_g)/real(I_g)),'Phase of generator current (in degree)=');
P_o_pu=0.866;//rated power output at pf=0.866 lagging
P_in_pu=real(V_g_pu*conj(I_g_pu));
Eff=P_o_pu/P_in_pu;
disp(Eff*100,'(c) Efficiency (%)=');