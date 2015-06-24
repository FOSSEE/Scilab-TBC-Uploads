//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.18
clear;
clc;

//Given
T1 = 273-87;//temp in K
T2 = 273;//temp in K
H1 = 115;//Latent heat of saturated ethane at 1 atm and -87 deg cel in Kcal/Kg
H2_ex = 72.44;//Experimental value of latent heat at 0 deg cel in Kcal/Kg
Tc = 306;//Critical temperature in K
M = 30;//Molecular weight of ethane

//To Calculate the latent heat of saturated ethane at 0 deg cel
Tr1 = T1/Tc;//reduced temp in K
Tr2 = T2/Tc;//reduced temp in K
//(i)Using Waton's method:
H2_c = H1*((1-Tr2)/(1-Tr1))^0.38;
mprintf('(i)The latent heat of saturated ethane at 0 deg cel using Waton method is %f Kcal/Kg',H2_c);
D = (H2_ex-H2_c)*100/H2_ex;
mprintf('\n   The deviation occurs using this method is %f percent',D);

//(ii)Using Vishwanath and Kuloor method
//From equation 13.117 (page no 289)
n = (0.00133*(H1*M/T1)+0.8794)^(1/0.1);
H2_c = H1*((1-Tr2)/(1-Tr1))^n;
mprintf('\n\n(ii)The latent heat of saturated ethane at 0 deg cel using Vishwanath and Kuloor method is %f Kcal/Kg',H2_c);
D = (H2_ex-H2_c)*100/H2_ex;
mprintf('\n   The deviation occurs using this method is %f percent',D);
//end