//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.19
clear;
clc;

//Given
H_s_ex = 32.7;//experimental value of latent heat of the solution in KJ/mole
x1 = 0.536;//mole percent of toulene in the solution
x2 = 1-0.536;//mole percent of 1,1,1-trichloroethane in the solution
H1 = 33.34;//Latent heat of toulene in KJ/gmole
H2 = 29.72;//Latent heat of 1,1,1-trichloroethane in KJ/gmole
He = 0;//excess enthalpy is neglected
Cp1 = 39.55;//Specific heat of toulene in cal/gmole deg cel
Cp2 = 24.62;//Specific heat of 1,1,1-trichloroethane in cal/gmole deg cel
T_D = 100;//dew point temperature in deg cel
T_B = 92.6;//bubble point temperature in deg cel

//To calculate the latent heat of the solution and compare it with the one which calculated from the given vapour pressure equation
//(i)Calculation of latent heat of the solution
//From equation 13.118 (page no 291)
H_s = H1*x1+H2*x2+He+(Cp1*x1+Cp2*x2)*10^-3*4.17*(T_D-T_B);
mprintf('(i)The latent heat of the solution is %f KJ/gmole',H_s);
D = ((H_s_ex-H_s)*100)/H_s_ex;
mprintf('\n    The deviation occurs using this method is %f percent',D);

//(ii)Calculation of latent heat from the vapour pressure equation
//From equation (a) (page no 291)
K = 1657.599/((273.16+5)^2);
H_s = (K*2.303*8.314*(273.16+5)^2)*10^-3;
mprintf('\n\n(ii)The latent heat of the solution is %f KJ/gmole',H_s);
D = ((H_s_ex-H_s)*100)/H_s_ex;
mprintf('\n    The deviation occurs using this method is %f percent',D);
//end