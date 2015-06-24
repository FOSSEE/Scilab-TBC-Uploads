clear ;
clc;
// Example 6.7
printf('Example 6.7\n\n');
printf('Page No. 150\n\n');

// given
F = 1;// Weight of fuel in kg
e = 0.5;// excess air percentage
C = 0.74;// Mass of Carbon in kg
H2 = 0.05;// Mass of Hydrogen in kg
S = 0.01;// Mass of Sulphur in kg
N2 = 0.001;//Mass of Nitrogen in kg
O2 = 0.05;// Mass of Oxygen in kg
H2O = 0.09;// Mass of Moisture in kg
Ash = 0.05;// Mass of Ash in kg

w_C = 12; // mol. weight of C
w_H2 = 2; //mol. weight of H2
w_O2 = 32; // mol. weight of O2
w_S = 32; //mol. weight of S
w_N2 = 28;// mol. weight of N2
w_H20 = 18;// mol. weight of H2O
//Basis- Per kg of fuel
mol_C = C / w_C;// kmol of C
mol_H2 = H2 /w_H2;//kmol of H2
mol_O2 = O2 /w_O2;//kmol of O2
mol_S = S /w_S;//kmol of S
mol_N2 = N2 /w_N2;//kmol of N2
mol_H2O = H2O /w_H20;//kmol of H20

//By kmol of product
CO2 = mol_C*1;// CO2 formed by the reaction C + O2 -> CO2
H2O_air = mol_H2*1;// H2O formed by the reaction H2 + (1/2)O2 -> H2O
SO2 = mol_S*1;// SO2 formed by the reaction S + O2 -> SO2
Pdt = CO2 + H2O_air + SO2 + mol_N2 + mol_H2O;// Total kmol of combustion products in kmol
//Calculation of excess air
C_req = mol_C*1;//O2 required by entering C given by reaction C+O2->CO2 in kmol
H_req = mol_H2*0.5;//O2 required by entering H2 given by reaction H2+(1/2)O2->H20 in kmol
S_req = mol_S*1;//O2 required by entering S given by reaction S+O2->SO2 in kmol
O2_req = (C_req + H_req + S_req) - mol_O2;// Total number of kmol of O2 required per kg of fuel in kmol

Ex_O2 = O2_req*e;//  Amount of excess oxygen in kmol

N2_air = (O2_req*(1+e)*79)/21;// in kmol (considering air consists of 79% N2 and 21% O2 by moles)
N2_flue = mol_N2 + N2_air;// Total N2 in flue gas in kmol
H2O_flue =  mol_H2O+ H2O_air;// Total H2O in flue gas in kmol

T_wet = CO2 + H2O_flue + SO2 + Ex_O2 + N2_flue;//Total components of flue gas on a wet basis in kmol
T_dry = CO2 + SO2 + Ex_O2 + N2_flue;//Total components of flue gas on a dry basis in kmol
H2O_dry = 0;
C_wet = ((CO2 / T_wet)*100);// in percentage 
H_wet = ((H2O_flue/T_wet)*100);// in percentage 
S_wet = ((SO2/T_wet)*100);// in percentage 
N_wet = ((N2_flue/T_wet)*100);// in percentage 
O_wet = ((Ex_O2/T_wet)*100);// in percentage 

C_dry = ((CO2 / T_dry)*100);// in percentage 
H_dry = ((H2O_dry/T_dry)*100);// in percentage 
S_dry = ((SO2/T_dry)*100);// in percentage 
N_dry = ((N2_flue/T_dry)*100);// in percentage 
O_dry = ((Ex_O2/T_dry)*100);// in percentage
T1 = C_wet + H_wet + S_wet + N_wet + O_wet;// in percentage
T2 = C_dry + S_dry + N_dry + O_dry;// in percentage
printf('\t\t      kmol \t\t   percent composition by volume\n Component \t Wet \t     Dry \t\t    Wet \t  Dry \n    CO2 \t %.4f    %.4f  \t\t   %.1f \t  %.1f \n    H2O \t %.4f    %.0f  \t\t\t   %.1f \t\t  %.1f \n    SO2 \t %.4f    %.4f  \t\t   %.1f \t\t  %.1f \n    N2 \t\t %.4f    %.4f  \t\t   %.1f \t  %.1f \n    O2 \t\t %.4f    %.4f  \t\t   %.1f \t\t  %.1f \n    TOTAL \t %.4f    %.4f  \t\t   %.0f \t\t  %.0f',CO2,CO2,C_wet,C_dry,H2O_flue, H2O_dry,H_wet,H_dry,SO2,SO2,S_wet,S_dry,N2_flue, N2_flue,N_wet,N_dry,Ex_O2,Ex_O2,O_wet,O_dry,T_wet,T_dry,T1,T2)
//Deviation in answes is due to some calculation approxiamation in the book.






