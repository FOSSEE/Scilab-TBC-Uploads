clear;
clc;

// Example: 2.17
// Page: 62

printf("Example: 2.17 - Page: 64\n\n");

// Solution

//*****Data*****//
D1 = 1;// [m]
P1 = 120;// [kPa]
P2 = 360;// [kPa]
// P = k*D^3
//***************//

k = P1/D1^3;// [proportionality constant]
D2 = (P2/k)^(1/3);// [m]
// Work done by the gas inside the balloon can be estimated as:
// W = integral(P*dV);
// W = integral((k*D^3)*d((4/3)*%pi*r^3);
// W = (%pi*k/6)*integral((D^3)*d(D^3));
// W = (%pi*k/12)*(D2^6 - D1^6);
W = (%pi*k/12)*(D2^6 - D1^6);// [kJ]
printf("Workdone by the gas is %.2f kJ\n",W);