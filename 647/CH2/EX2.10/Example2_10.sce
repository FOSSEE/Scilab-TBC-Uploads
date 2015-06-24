clear;
clc;

// Example: 2.10
// Page: 53

printf("Example: 2.10 - Page: 53\n\n");

// Solution

//*****Data*****//
T1 = 300;// [K]
V1 = 30;// [L]
V2 = 3;// [L]
Cv = 5;// [cal/mol]
R = 2;// [cal/K mol]
//*************//

Cp = Cv + R;// [cal/mol]
gama = Cp/Cv;
// The relation between temperature and volume of ideal gas undergoing adiabatic change is given by:
// (T2/T1) = (V1/V2)^(gama - 1)
T2 = T1 * (V1/V2)^(gama - 1);// [K]
printf("The final temperature is %.1f K\n",T2);