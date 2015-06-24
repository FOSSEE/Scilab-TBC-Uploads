clear;
clc;

// Example: 4.1
// Page: 118

printf("Example: 4.1 - Page: 118\n\n");

// Solution

//*****Data*****//
Qp = -327;// [kcal]
T = 27 + 273;// [K]
R = 2*10^(-3);// [kcal/K mol]
//*************//

// The reaction involved is:
// C2H5OH(l) + 3O2(g) = 2CO2(g) + 3H2O(l)
deltan = 2 - 3;
Qv = Qp - deltan*R*T;// [kcal]
printf("Value of Qv is %.2f kcal\n",Qv);