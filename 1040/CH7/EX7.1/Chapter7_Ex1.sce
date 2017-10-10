//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-7 Ex7.1 Pg No.260
//Title:Overall Reaction Rate Coefficient, Percent Resistance, Reaction Volume and Reactor Size
//===========================================================================================================
clear
clc
// COMMON INPUT
k2=8.5;//Reaction rate constant (L/mol-sec)
T=50;//Reaction condition temperature(°C)
P=2;//Reaction Pressure (atm)
H_O2=8*10^4;// Solubility (atm/mol fraction)
F=17000//Feed rate (L/hr)
C_B_feed=1.6;//Feed concentration(M)
C_B_product=0.8;//Product concentration(M)
k_L_a=900;//Liquid film mass transfer coefficient(hr-1)
k_g_a=80;//Gas film mass transfer coefficient(mol/hr L atm)
Epsilon=0.1;//Porosity
percent_inc=0.2;//Percentage excess required for reactor volume


//CALCULATION (Ex7.1.a)
H_O2_conv=H_O2*18/1000;// Convert (atm L/mole O2)
k_L_a_by_H=k_L_a/H_O2_conv;
reaction_resistance=H_O2_conv/(k2*C_B_product*(1-Epsilon)*3600);
Kg_a=1/((1/k_g_a)+(1/k_L_a_by_H)+(reaction_resistance));//Refer equation7.10
gasfilm_resistance_per=((1/k_g_a)/(1/Kg_a))*100;
liq_film_resistance_per=((1/k_L_a_by_H)/(1/Kg_a))*100;
reaction_resistance_per=((reaction_resistance)/(1/Kg_a))*100;

//CALCULATION (Ex7.1.b)
delta_C_B=C_B_feed-C_B_product;
mol_O2_needed=F*delta_C_B/4;
N_air=100;//Assuming 100 mole of feed air
f_O2=0.209;//Fraction of O2
f_N2=1-f_O2;//Fraction of N2
N_O2_in=N_air*f_O2;
N_N2_in=N_air*f_N2;
N_O2_out=N_O2_in/2;//Half of O2 fed
N_N2_out=N_N2_in;
N_air_out=N_N2_out+N_O2_out;
P_O2_out=P*(N_O2_out/N_air_out);
P_O2_in=P*(N_O2_in/N_air);
P_O2_bar=(P_O2_in-P_O2_out)/(log(P_O2_in/P_O2_out));//Log mean Pressure
volume=mol_O2_needed/(Kg_a*P_O2_bar);
reactor_vol=volume+volume*percent_inc;
volume_gal=volume*0.264;
reactor_vol_gal=reactor_vol*0.264;


//OUTPUT (Ex7.1.a)
mprintf('\n OUTPUT Ex7.1.a');
mprintf('\n==========================================================');
mprintf('\nThe percentage  gas-film resistance : %0.1f%%',gasfilm_resistance_per);
mprintf('\nThe percentage liquid-film resistance: %0.1f%%',liq_film_resistance_per);
mprintf('\nThe percentage chemical reaction resistance: %0.1f%%',reaction_resistance_per);

//OUTPUT (Ex7.1.b)
mprintf('\n\n\n OUTPUT Ex7.1.b');
mprintf('\n==========================================================');
mprintf('\n Reaction volume  calculated : %0.0f L ',volume );
mprintf('\n Reactor size to be chosen : %0.0f L',reactor_vol);


// FILE OUTPUT
fid= mopen('.\Chapter7-Ex1-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex7.1.a');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\nThe percentage  gas-film resistance : %0.1f%%',gasfilm_resistance_per);
mfprintf(fid,'\nThe percentage liquid-film resistance: %0.1f%%',liq_film_resistance_per);
mfprintf(fid,'\nThe percentage chemical reaction resistance: %0.1f%%',reaction_resistance_per);
mfprintf(fid,'\n\n\n OUTPUT Ex7.1.b');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n Reaction volume  calculated : %0.0f L ',volume );
mfprintf(fid,'\n Reactor size to be chosen : %0.0f L',reactor_vol);
mclose(fid);
//===================================================END OF PROGRAM======================================================


