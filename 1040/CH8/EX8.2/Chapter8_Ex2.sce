//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-8 Ex8.2 Pg No. 329
//Title:External Mass Transfer resistance
//===========================================================================================================

clear
clc
//INPUT
Chi=1.9;
M_A=2;//Molecular weight of Hydrogen
M_B=32;//Molecular weight of methanol
rho=0.79;//Density of methanol
myu=0.52;//Viscosity of methanol (cP)
V_A=14.3//Molar volume H2
T_C=30;//Operating Temperature(°C)
T_K=273+T_C//Temperature (K)
Epsilon=0.4;//Porosity
rho_cat_dry=1.2;//Density of dry catalyst (g/cm3)
rho_s=2;//Solid density
g=9.8// Acceleration due to gravity(m/s2)
d_p=10^(-3);//Size of catalyst (cm)
lambda=1.3;//From equation 8.4 Pg. No. 317
r_vol=2.4;//Measured rate (L/min)
V_mol=22.4;//(L/mol) assuming ideal gas
C_H2=4.1*10^(-3);//From Figure 8.3 (mol/L)  Pg. No. 321


//CALCULATION
//Assume D_H2 is three times the value given by the Wilke–Chang Equation
D_H2=3*(7.4*(10^(-8))*(Chi*M_B)^(0.5)*T_K)/(myu*(V_A)^0.6)
Sc=myu*10^-2/(rho*D_H2);
rho_cat_methanol=(1-Epsilon)*rho_s+Epsilon*rho;
delta_rho=rho_cat_methanol-rho;
v_t=(g*10*(d_p)^2*delta_rho)/(18*myu*10^-2);// From Stoke's Law
Re=rho*v_t*d_p/(myu*10^-2);
Sh_star=2+0.6*(Re)^(0.5)*(Sc^(1/3));//Refer equation 8.9  Pg.No.325
kc_star=Sh_star*D_H2/d_p;
kc=2*kc_star;//With vigorous agitation
a_c=6*lambda/(d_p*rho_cat_dry);//From Equation 8.4 Pg. No. 317 
r_mol=r_vol/(22.4*60);//
delta_C_ext=r_mol*10^3/(kc*a_c);
percent_ext_resistance=(delta_C_ext/C_H2)*100;

//OUTPUT
mprintf('\nThe external mass transfer resistance is about %0.0f%% of overall resistance',percent_ext_resistance);
mprintf('\n The external mass transfer resistance is barely significant');

//FILE OUTPUT
fid= mopen('.\Chapter8-Ex2-Output.txt','w');
mfprintf(fid,'\nThe external mass transfer resistance is about %0.0f%% of overall resistance',percent_ext_resistance);
mfprintf(fid,'\n The external mass transfer resistance is barely significant');
mclose(fid);
//=====================================================END OF PROGRAM=========================================









