//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436
//Chapter-7 Ex7.5 Pg No.293
//Title:Maximum rate of CO absorption  and Dimensions of Bubble Column Reactor
//===========================================================================================================
clear
clc
// COMMON INPUT
P_dash=5;//Partial pressure of acetic acid (atm)
P_total=20;//Total Pressure (atm)
myu=0.19;// Viscosity of acetic acid
T_C=180;//Temperature in (°C)
T_K=T_C+273;//Temperature in (K)
sigma_20=28;//Surface Tension(Dynes/cm) at 20 (°C)
sigma_180=20;//Surface Tension (Dynes/cm)at 180 (°C)
M_CO=28;//Molecular weight of CO
M_B=60.05;//Molecular weight acetic acid
V_A= 30.7;//Molar volume
S_CO=7*10^(-3);//Solubility of CO (mol/L atm)
f_CO=0.75;//Fraction of CO in feed
f_acetic_acid=1-f_CO;//Fraction of Acetic acid
R=82.056*(10^-3);//(cm3 atm/ K  mol)
rho_air=1.21;//(kg/m3)density of air at 20 (°C)
sigma_H2O=72;//Surface tension (Dynes/cm)
myu_H2O=1;//Viscosity of water
k_L_a_air_water=0.051;//(sec-1)
D_O2_water=2.4*(10^-5);//(cm2/sec)diffusivity for oxygen in waterat 20(°C) 
Conc_Rh=4*10^(-3);//Concentration of Rohdium(M)
Conc_CH3I=1;//Concentration of Methyl Iodide(M)
F_product_acetic_acid=0.1;// Rate of acetic acid produced (kmol/sec)
f_CO_reacted=0.8;//80% of CO reacted
u_g=0.1;//(m/sec)
Epsilon_air_water_new=0.07;//At velocity  3(cm/sec)
Epsilon_air_water_old= 0.12;//At velocity 6(cm/sec)
u_g_c=5*(10^(-2));//Gas Velocity  Ex7.5.c(m/sec)



//CALCUATION (Ex7.5.a)
D_CO=(7.4*10^(-8)*M_B^(1/2)*T_K)/(myu*V_A^(0.6));//Diffusivity of CO (Wilke–Chang equation Eq4.17)
M_ave=f_CO*M_CO+M_B*f_acetic_acid;//Average Molecular weight
rho_g=M_ave*P_total/(R*T_K);//From ideal gas law
epsilon_air_water= 0.12;//At velocity 6(cm/sec)
epsilon=epsilon_air_water*(sigma_H2O/sigma_180)^(0.4)*(myu/myu_H2O)^(0.2)*(rho_g/rho_air)^(0.2);//From equation 7.64
u_G=6;//From figure 7.12(cm/sec)
k_L_a=k_L_a_air_water*(D_CO/D_O2_water)^(0.5)*(epsilon/epsilon_air_water);//From equation 7.69
P_CO=P_total-P_dash;
C_CO_Star=S_CO*P_CO;
r_max=C_CO_Star*k_L_a;//Rate of CO absorption at 15 atm
r_test=158.8*(10^(6))*exp(-8684/T_K)*(Conc_Rh)*(Conc_CH3I);//Kinetic rate at 180 (°C) 

//CALCULATION(Ex7.5.b)
F_feed_CO=F_product_acetic_acid/f_CO_reacted;//Rate of flow of CO (kmol/sec)
F_total=F_feed_CO/f_CO;
Q=F_total*R*T_K/(P_total);
S=Q/u_g;
D_t=sqrt(4*S/%pi);
r_test_b=(158.8*(10^(6))*exp(-8684/T_K)*(Conc_Rh)*(Conc_CH3I))*(10^(-3));//Kinetic rate at 180 (°C) 
liquid_vol= (F_product_acetic_acid/r_test_b)*(10^(-3));//liquid volume (m3)
h0=liquid_vol/S;//clear liquid
h=h0/(1-epsilon);//aerated liquid

//CALCULATION(Ex7.5.c)
Q=F_total*R*T_K/(P_total);
S=Q/u_g_c;
D_t_c=sqrt(4*S/%pi);
Epsilon_new=(Epsilon_air_water_new/Epsilon_air_water_old)*epsilon;
liquid_vol= (F_product_acetic_acid/r_test_b)*(10^(-3));//liquid volume (m3)
h0=liquid_vol/S;//clear liquid
h_new=h0/(1-Epsilon_new);//aerated liquid

//OUTPUT (Ex7.5.a)
mprintf('\n OUTPUT Ex7.5.a');
mprintf('\n==========================================================');
mprintf('\n\tThe maximum rate of CO absorption at 15 atm : %f (mol/L s)',r_max);
mprintf('\n\tThe kinetic rate of CO absorption at 180(°C) : %f (mol/L s)',r_test);
mprintf('\n\tThe predicted value of k_L_a : %0.2f (s-1)',k_L_a);

//OUTPUT (Ex7.5.b)
mprintf('\n\n\n OUTPUT Ex7.5.b');
mprintf('\n==========================================================');
mprintf('\n\tThe Dimensions of the reactor are ');
mprintf('\n\tDiameter:%0.0f m',D_t); 
mprintf('\n\tHeight:%0.2f m',h); 

//OUTPUT (Ex7.5.c)
mprintf('\n\n\n OUTPUT Ex7.5.c');
mprintf('\n==========================================================');
mprintf('\n\tThe new dimensions of the reactor');
mprintf('\n\tDiameter:%0.1f m',D_t_c);
mprintf('\n\tHeight:%0.1f m',h_new);

//FILE OUTPUT
fid= mopen('.\Chapter7-Ex5-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex7.5.a');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n\tThe maximum rate of CO absorption at 15 atm : %f (mol/L s)',r_max);
mfprintf(fid,'\n\tThe kinetic rate of CO absorption at 180(°C) : %f (mol/L s)',r_test);
mfprintf(fid,'\n\tThe predicted value of k_L_a : %0.2f (s-1)',k_L_a);
mfprintf(fid,'\n\n\n OUTPUT Ex7.5.b');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n\tThe Dimensions of the reactor are ');
mfprintf(fid,'\n\tDiameter:%0.0f m',D_t); 
mfprintf(fid,'\n\tHeight:%0.2f m',h); 
mfprintf(fid,'\n\n\n OUTPUT Ex7.5.c');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n\tThe new dimensions of the reactor');
mfprintf(fid,'\n\tDiameter:%0.1f m',D_t_c);
mfprintf(fid,'\n\tHeight:%0.1f m',h_new);
mclose(fid);

//=================================================END OF PROGRAM===========================================================



