//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc. USA,pp 436.
//Chapter-4 Ex4.4 Pg No.157
//Title: Effectiveness factor for solid catalyzed reaction
//======================================================================================================================
clear
clc
//INPUT
D_e_A=0.02;//(cm2/s)
D_e_B=0.03;//(cm2/s)
D_e_C=0.015;//(cm2/s)
X_f_A=0.3;
X_f_B=(1-X_f_A);
eta_assumed=0.68;//Effectiveness factor from Fig.4.8 for first order reaction
T=150;//(deg C)
T_K=T+273;//(K)
r=0.3;//(cm)Radius of catalyst sphere
P_opt=4;//(atm)Operating Pressure 
R=82.056;//(cm3 atm/K mol)Gas constant 


//CALCULATION
//Kinetic equation r= (2.5*10^-5*P_A*P_B)/(1+0.1*P_A+2*P_C)^2
P_A=X_f_A*P_opt;
P_B=X_f_B*P_opt;
r_star=(2.5*10^-5*P_A*P_B)/(1+0.1*P_A)^2;
C_A=P_A/(R*T_K);
k=r_star/C_A;
Phi= r*(k/D_e_A)^(0.5);
P_A_bar=eta_assumed*P_A;
delta_P_A=P_A*(1-eta_assumed);
delta_P_B=delta_P_A*(D_e_A/D_e_B);
P_B_bar=P_B-delta_P_B;
delta_P_C=delta_P_A*(D_e_A/D_e_C);
P_C_bar=delta_P_C;
r_calc=(2.5*10^-5*P_A_bar*P_B_bar)/(1+0.1*P_A_bar+2*P_C_bar)^2
eta_calc=r_calc/r_star;
eta_approx=(eta_calc+eta_assumed)/2;

//OUTPUT
//Console Output
mprintf('\tBased on average pressures calculated Rate and Effectiveness factor');
mprintf('\n\t r : %0.2E (mol/s cm3)',r_calc);
mprintf('\n\t eta_calc : %0.3f ',eta_calc);
mprintf('\n The actual value of Effectiveness factor eta_actual :%0.1f',eta_approx);

//File Output
fid= mopen('.\Chapter4-Ex4-Output.txt','w');
mfprintf(fid,'\tBased on average pressures calculated Rate and Effectiveness factor');
mfprintf(fid,'\n\t r : %0.2E (mol/s cm3)',r_calc);
mfprintf(fid,'\n\t eta_calc : %0.3f ',eta_calc);
mfprintf(fid,'\n The actual value of Effectiveness factor eta_actual :%0.1f',eta_approx);
mclose(fid);
//================================================END OF PROGRAM==================================================================================




