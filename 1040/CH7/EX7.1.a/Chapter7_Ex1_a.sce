//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-7 Ex7.1.a Pg No.260
//Title:Overall Reaction Rate Coefficient and Percent Resistance
//===========================================================================================================
clear
clc
//INPUT
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


//CALCULATION
H_O2_conv=H_O2*18/1000;// Convert (atm L/mole O2)
k_L_a_by_H=k_L_a/H_O2_conv;
reaction_resistance=H_O2_conv/(k2*C_B_product*(1-Epsilon)*3600);
Kg_a=1/((1/k_g_a)+(1/k_L_a_by_H)+(reaction_resistance));//Refer equation7.10
gasfilm_resistance_per=((1/k_g_a)/(1/Kg_a))*100;
liq_film_resistance_per=((1/k_L_a_by_H)/(1/Kg_a))*100;
reaction_resistance_per=((reaction_resistance)/(1/Kg_a))*100;

//OUTPUT
// Console Output
mprintf('\nThe percentage  gas-film resistance : %0.1f%%',gasfilm_resistance_per);
mprintf('\nThe percentage liquid-film resistance: %0.1f%%',liq_film_resistance_per);
mprintf('\nThe percentage chemical reaction resistance: %0.1f%%',reaction_resistance_per);

// File Output
fid= mopen('.\Chapter7-Ex1-a-Output.txt','w');
mfprintf(fid,'\nThe percentage  gas-film resistance: %0.1f%%',gasfilm_resistance_per);
mfprintf(fid,'\nThe percentage liquid-film resistance: %0.1f%%',liq_film_resistance_per);
mfprintf(fid,'\nThe percentage chemical reaction resistance: %0.1f%%',reaction_resistance_per);
mclose(fid);
//===================================================END OF PROGRAM======================================================


