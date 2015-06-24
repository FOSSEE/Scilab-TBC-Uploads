clear;
clc;

// Illustration 7.9
// Page:240

printf('Illustration 7.9 - Page:240\n\n');

// solution

//****Data****//
Tempw = 35;// [OC]
Tempg = 65;// [OC]
//******//

// From psychrometric chart
lambda_w = 2419300;// [J/kg]
Y_prime_w = 0.0365;// [kg H2O/kg dry air]
// From fig 7.5(a)
hG_by_kY = 950;// [J/kg]
// From Eqn. 7.26
deff('[y] = f13(Y_prime)','y = (Tempg-Tempw)-((lambda_w*(Y_prime_w-Y_prime))/hG_by_kY)');
Y_prime = fsolve(2,f13);// [kg H2O/kg dry air]
printf("Humidity of air is %f kg H2O/kg dry air\n",Y_prime);