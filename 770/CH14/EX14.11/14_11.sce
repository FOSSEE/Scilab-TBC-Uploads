clear;
clc;

//Example - 14.11
//Page number - 470
printf("Example - 14.11 and Page number - 470\n\n")

//Given,
T = 60 + 273.15;//[K] - Temperature
R = 1.987;//[cal/mol*K] - Universal gas constant
//component 1 = acetone
//component 2 = water
x_1 = 0.3;// Mole fraction of component 1
x_2 = 1 - x_1;//Mole fraction of component 2
V_mol_1 = 74.05;//[cm^(3)/mol] - Molar volume of pure component 1
V_mol_2 = 18.07;//[cm^(3)/mol] - Molar volume of pure component 2

//for Wilson equation
a_12 = 291.27;//[cal/mol]
a_21 = 1448.01;//[cal/mol]

//For NRTL
b_12 = 631.05;//[cal/mol]
b_21 = 1197.41;//[cal/mol]
alpha = 0.5343;

//Froom wilson equation
A_12=(V_mol_2/V_mol_1)*(exp(-a_12/(R*T)));
A_21 = (V_mol_1/V_mol_2)*(exp(-a_21/(R*T)));
Beta = A_12/(x_1+x_2*A_12) - A_21/(x_2+x_1*A_21);
//log(Y1) = -log(x_1 + x_2*A_12) + x_2*Beta; 
Y1 = exp(-log(x_1+x_2*A_12)+x_2*Beta);
//similarly for Y2
Y2 = exp(-log(x_2+x_1*A_21)-x_1*Beta);
printf("The value of activity coefficients for Wilson equation are\n Y1 = %f \t and \t Y2 = %f\n\n",Y1,Y2);

//From NRTL equation,
t_12 = b_12/(R*T);
t_21 = b_21/(R*T);
G_12 = exp(-alpha*t_12);
G_21 = exp(-alpha*t_21);

//log(Y1) = x_1^(2)*[t_12*(G_12/(x_1+x_2*G_12))^(2) + (G_12*t_12)/((G_12/(x_1+x_2*G_12))^(2))]
Y1_prime = exp(x_2^(2)*(t_21*(G_21/(x_1+x_2*G_21))^(2)+(G_12*t_12)/(((x_2+x_1*G_12))^(2))));
//Similarly for Y2
Y2_prime = exp(x_1^(2)*(t_12*(G_12/(x_2+x_1*G_12))^(2)+(G_21*t_21)/(((x_1+x_2*G_21))^(2))));

printf("The value of activity coefficients for NRTL equation are\n Y1 = %f \t and \t Y2 = %f\n\n",Y1_prime,Y2_prime);




