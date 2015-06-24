clear;
clc;

//Example - 14.15
//Page number - 481
printf("Example - 14.15 and Page number - 481\n\n")

//Given,
T = 25 + 273.15;//[K] - Temperature
R = 1.987;//[cal/mol*K] - Universal gas constant
//component 1 = chloroform
//component 2 = carbon tetrachloride
x_1 = 0.5;//Mole fraction of component 1 //Equimolar mixture
x_2 = 0.5;//Mole fraction of component 2
V_mol_1 = 81;//[cm^(3)/mol] - Molar volume of pure component 1
V_mol_2 = 97;//[cm^(3)/mol] - Molar volume of pure component 2
del_1 = 9.2;//[(cal/cm^(3))^(1/2)] - Mole fraction of component 1
del_2 = 8.6;//[(cal/cm^(3))^(1/2)] - Mole fraction of component 2

//Scatchard - Hilderbrand model
phi_1 = (x_1*V_mol_1)/(x_1*V_mol_1+x_2*V_mol_2);
phi_2 = (x_2*V_mol_2)/(x_1*V_mol_1+x_2*V_mol_2);

//log(Y1) = (V_mol_1/(R*T))*phi_1^(2)*(del_1-del_2)^(2)
Y1 = exp((V_mol_1/(R*T))*(phi_1^(2))*((del_1-del_2)^(2)));

//Similarly, for Y2
Y2 = exp((V_mol_2/(R*T))*(phi_2^(2))*((del_1-del_2)^(2)));

printf("The value of activity coefficients for Scatchard-Hilderbrand model are\n Y1 = %f \t and \t Y2 = %f\n\n",Y1,Y2);

