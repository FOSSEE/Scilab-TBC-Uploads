clear;
//clc();

// Example 11.15
// Page: 302
printf("Example-11.15  Page no.-302\n\n");

//***Data***//
T = 273.15+35;//[K]
p_d = 100;//[atm]
R = 82.06;//[(cm^(3)*atm)/(mol*K)]
 //******//

//The calculated vapour pressure of naphthalene at 35C is
p_naphthalene = 0.00065;//[atm]
//The solid is practically pure naphthalene
x_naphthalene = 1.00;
//Total pressure 
P = p_d;
//By Raoult's law
y_naphthalene = x_naphthalene*p_naphthalene/P;
//At this high a pressure the volume of solid naphthalene is
v = 132;//[cm^(3)/mol]
// We have equation log(f_d/f_c) = v/(R*T)*(p_d-p_c)
p_c = 1;//[atm]
f_d_by_f_c = exp(v/(R*T)*(p_d-p_c));
//and the estimated
y_naphthalene = f_d_by_f_c*y_naphthalene;
printf("Estimated solubility of naphthalene in CO2 is %e",y_naphthalene);

