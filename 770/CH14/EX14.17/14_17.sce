clear;
clc;

//Example - 14.17
//Page number - 488
printf("Example - 14.17 and Page number - 488\n\n");

//Given,
T = 50 + 273.15;//[K] - Temperature
R=8.314;//[J/mol*K] - Universal gas constant
x_1 = 0.3;// Mole fraction of component 1
x_2 = (1-x_1);// Mole fraction of component 2
//Increment of 1% means Y2 = 1.01*Y1

//Excess volume of the mixture is given by,
V_excess = 4*x_1*x_2;//[cm^(3)/mol]
//Amd threfore
V_1_excess = 4*x_2*x_2*10^(-6);//[m^(3)/mol] - Exces volume of component 1
V_2_excess = 4*x_1*x_1*10^(-6);//[m^(3)/mol] - Exces volume of component 2

//We have from equation 14.89 of the book,
//V_i_excess/(R*T) = (del_log(Y_i)/del_P)_T,x

//Rearranging above equation
//d(log(Y1)) = (V1_excess/(R*T))dP
//Integrating the above equation at constant 'T' and 'x' in the limit from 'Y1' to '1.01*Y1' in the LHS and from 'P' to 'P+delta_P' in the RHS
//On simplification we get
//log(1.01*Y1/Y1) = (V_1_exces/(R*T))*delta_P
delta_P = log(1.01)/(V_1_excess/(R*T));//[N/m^(2)]
delta_P = delta_P*10^(-6);//[MPa]

printf("The required pressure to increase the activity coefficient by 1%% is %f MPa",delta_P);
