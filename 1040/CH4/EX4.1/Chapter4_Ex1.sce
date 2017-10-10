//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-4 Ex4.1 Pg No. 135
//Title:Diffusivity of Chlorine and tortuosity in catalyst pellet
//===========================================================================================================
clear
clc

// COMMON INPUT 
S_g=235;//Total surface per gram (m2/g)
V_g=0.29E-6;//Pore volume per gram (cm3/g)
rho_p=1.41;//Density of particle (g/cm3)
D_He=0.0065;//Effective diffusivity of He (cm2/sec)
D_AB=0.73;// at 1atm and 298K
M_He=4;//Molecular weight of He
M_Cl2=70.09;//Molecular weight of Cl2
T_ref=293;//Reference temperature
T_degC=300;
T_01=T_degC+273;//Reaction temperature(K) (Ex4.1.a)
T_02=298;//Operating temperature  (Ex4.1.b)
T_03=573;//operating temperature (Ex4.1.c)
P_ref=1;//Reference pressure
D_Cl2_CH4=0.15;//at 1atm 273K
P=15;//operating pressure 
//tau=1.25;//From value calculated in Ex4.1.b Pg. No. 136


//CALCULATION (Ex4.1.a)
r_bar=2*V_g/S_g;//Mean Pore radius
D_Cl2_Ex_a=D_He*((M_He/M_Cl2)*(T_01/T_ref))^(0.5);//Assuming Knudsen flow at 573K

//CALCULATION (Ex4.1.b)
r_bar=2*V_g*(10^6)/(S_g *(10^4));
D_K=9700*(r_bar)*(T_ref/M_He)^(0.5);//Knudsen flow
D_AB1=D_AB*(293/298)^(1.7)// at 1.5 atm and 293K
D_pore=1/((1/D_K)+(1/D_AB1));//pore diffusion
Epsilon=V_g*rho_p*(10^6);
tau=(D_pore*Epsilon)/D_He;//Tortusity

//CALCULATION (Ex4.1.c)
D_Cl2_CH4_new=D_Cl2_CH4*(P_ref/P)*(T_03/T_ref)^(1.7);
D_K_Cl2=9700*r_bar*sqrt(T_03/M_Cl2);
D_pore=1/((1/D_Cl2_CH4_new)+(1/D_K_Cl2));
Epsilon=V_g*rho_p;
D_Cl2_Ex_c=D_pore*Epsilon/tau;


//OUTPUT
mprintf('\n OUTPUT Ex4.1.a');
mprintf('\n=================================================');
mprintf('\nThe predicted diffusivity of Chlorine is %0.2e cm2/s ',D_Cl2_Ex_a);
mprintf('\n\n OUTPUT Ex4.1.b');
mprintf('\n=================================================');
mprintf('\nThe tortusity value = %0.2f',tau);
mprintf('\n\n OUTPUT Ex4.1.b');
mprintf('\n=================================================')
mprintf('\nThe Effective diffusivity of Chlorine at %g K and %g atm =  %0.2e cm2/sec ',T_03, P, D_Cl2_Ex_c); 

//FILE OUTPUT
fid= mopen('.\Chapter4-Ex1-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex4.1.a');
mfprintf(fid,'\n=================================================');
mfprintf(fid,'\nThe predicted diffusivity of Chlorine is %0.2e cm2/s ',D_Cl2_Ex_a);
mfprintf(fid,'\n\n OUTPUT Ex4.1.b');
mfprintf(fid,'\n=================================================');
mfprintf(fid,'\nThe tortusity value = %0.2f',tau);
mfprintf(fid,'\n\n OUTPUT Ex4.1.b');
mfprintf(fid,'\n=================================================')
mfprintf(fid,'\nThe Effective diffusivity of Chlorine at %g K and %g atm =  %0.2e cm2/sec ',T_03, P, D_Cl2_Ex_c);
mclose(fid)
//============================================END OF PROGRAM=================================================


