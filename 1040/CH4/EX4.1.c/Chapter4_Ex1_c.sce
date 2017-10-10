//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436
//Chapter-4 Ex4.1.c Pg No. 135
//Title: Effective Diffusivity of chlorine at 15 atm  
//============================================================================================================
clear
clc
//INPUT
S_g=235;
V_g=0.29;
rho_p=1.41;
T_ref=273;//Reference temperature (K)
P_ref=1;//Reference pressure
M_Cl2=70.9;//Molecular weight of Chlorine
T=573;//operating temperature
D_Cl2_CH4=0.15;//at 1atm 273K
P=15;//operating pressure 
tau=1.25;//From value calculated in Ex4.1.b Pg. No. 136

//CALCULATION
r_bar=2*V_g /(S_g *(10^4));
D_Cl2_CH4_new=D_Cl2_CH4*(P_ref/P)*(T/T_ref)^(1.7);
D_K_Cl2=9700*r_bar*sqrt(T/M_Cl2);
D_pore=1/((1/D_Cl2_CH4_new)+(1/D_K_Cl2));
Epsilon=V_g*rho_p;
D_Cl2=D_pore*Epsilon/tau;


//OUTPUT
//Console Output
mprintf('\n The Effective diffusivity of Chlorine at %g K and %g atm =  %0.2e cm2/sec ',T, P, D_Cl2);  
//File Output
fid= mopen('.\Chapter4_Ex1_c_Output.txt','w');
mfprintf(fid,'\n The Effective diffusivity of Chlorine at %g K and %g atm =  %0.2e cm2/sec ',T, P, D_Cl2);
mclose(fid);
//=================================================END OF PROGRAM=============================================

