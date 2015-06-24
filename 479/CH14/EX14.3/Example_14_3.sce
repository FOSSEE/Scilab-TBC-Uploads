//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.3
clear;
clc;

//Given
H_C2H4 = 12500;//Standard heat of formation  of ethylene at 25 de cel
H_C2H4O = -12190;//Standard heat of formation of ethylene oxide at 25 deg cel
H_CO2 = -94052;//Standard heat of formation of CO2 at 25 deg cel
H_H2O = -57798;//Standard heat of formation of H2O at 25 deg cel
T1 = 200;//temperature at which mixture entered in deg cel
Ti = 25;//intermediate temperature in deg cel
T2 = 260;//product temperature in deg cel
Cp_air_a = 7;//Mean specific heat for 25 to 200 deg cel in Kcal/Kgmole
Cp_C2H4_a = 18;//Mean specific heat for 25 to 200 deg cel in Kcal/Kgmole
//Mean specific heat for 25 to 260 deg cel in Kcal/Kgmole are given as:
Cp_C2H4_b = 19;
Cp_C2H4O_b = 21;
Cp_O2_b = 7.30;
Cp_N2_b = 7.00;
Cp_CO2_b = 10.00;
Cp_H2O_b = 8.25;
//Basis: 1 Kgmole of ethylene as feed
n_air = 9;//Kgmoles
n_C2H4 =1;//Kgmoles
n_C2H4_1 = 0.6//ethylene consumed while converting in C2H4O in Kgmoles (Rxn 1)
n_C2H4_2 = 0.3;//ethylene burnt completely to CO2 in Kgmoles (Rxn 2)

//To Calculate the heat must be removed if the product temperature should not exceed 260 deg cel
n_O2 = n_air*0.21;//Kgmoles of O2 fed
n_N2 = n_air-n_O2;//Kgmoles of N2 fed
//Rxn 1: (0.6)C2H4 + (0.3)O2 - (0.6)C2H4O;...(i) 60% of C2H4 is converted to C2H4O
n_O2_1 = n_C2H4_1/2;//Kgmoles of oxygen consumed
n_C2H4O_1 = n_C2H4_1;//C2H4O formed in Kgmoles
//Rxn 2: (0.3)C2H4 + (0.9)O2 - (0.6)CO2+ (0.6)H20;...(ii) 30%conversion
n_O2_2 = 3*n_C2H4_2;//Kgmoles of O2 reacted
n_CO2_2 = 2*n_C2H4_2;//Kgmoles of CO2 formed
n_H2O_2 = 2*n_C2H4_2;//Kgmoles of H2O formed
n_C2H4_r = n_C2H4 - n_C2H4_1 - n_C2H4_2;//unreacted ethylene in Kgmoles
n_O2_r = n_O2 - n_O2_1-n_O2_2;//unreacted O2 in Kgmoles
//The overall rxn is given by (i)&(ii),
//(0.9)C2H4 + (1.2)O2 - (0.6)C2H4O + (0.6)CO2 + (0.6)H2O...(iii)
del_H = (0.6*H_C2H4O)+(0.6*H_CO2)+(0.6*H_H2O)-(0.9*H_C2H4);//since,standard enthalpy of O2 is zero; Standard heat of rxn in Kcal/Kgmole
Q1 = (n_C2H4*Cp_C2H4_a + n_air*Cp_air_a)*(Ti-T1);//Sensible heat in feed in Kcal
Q2 = (n_C2H4_r*Cp_C2H4_b + n_C2H4O_1*Cp_C2H4O_b + n_CO2_2*Cp_CO2_b + n_H2O_2*Cp_H2O_b + n_O2_r*Cp_O2_b + n_N2*Cp_N2_b)*(T2-Ti);//Sensible heat in product in Kcal
Q = Q1+Q2+del_H;
mprintf('The heat to be removed is %f Kcal so that the product temperature is 260 deg celsius',-Q);
//end
