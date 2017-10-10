//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-4 Ex4.1.a Pg No. 135
//Title:Diffusivity of Chlorine at 573K and 1.5atm
//===========================================================================================================
clear
clc
//INPUT
S_g=235;//Total surface per gram (m2/g)
V_g=0.29E-6;//Pore volume per gram (cm3/g)
rho_p=1.41;
D_He=0.0065;//Effective diffusivity of He (cm2/sec)
M_He=4;//Molecular weight of He
M_Cl2=70.09;//Molecular weight of Cl2
T_ref=293;//Reference temperature
T_degC=300;
T=T_degC+273;//Reaction temperature(K)

//CALCULATION
r_bar=2*V_g/S_g;//Mean Pore radius
D_Cl2=D_He*((M_He/M_Cl2)*(T/T_ref))^(0.5);//Assuming Knudsen flow at 573K

//OUTPUT
//Console Output
mprintf('The predicted diffusivity of Chlorine is %0.2E cm2/s ',D_Cl2);

//File Output
fid= mopen('.\Chapter4_Ex1_a_Output.txt','w');
mfprintf(fid,'The predicted diffusivity of Chlorine is %0.2E cm2/s ',D_Cl2);
mclose(fid);
//============================================END OF PROGRAM=================================================


