clear;
clc;

// Example: 5.17
// Page: 170

printf("Example: 5.17 - Page: 170\n\n");

// Solution

//*****Data*****//
deff('[y] = Cp(T)','y = 7.25 + 2.28*10^(-3)*T');
T1 = 273 + 137;// [K]
T2 = 273 + 877;// [K]
//************//

deltaS = integrate('Cp(T)/T','T',T1,T2);// [cal/K]
printf("Change in Entropy is %.3f cal/K",deltaS);