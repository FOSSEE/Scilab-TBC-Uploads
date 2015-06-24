clear;
clc;

// Example: 5.19
// Page: 172

printf("Example: 5.19 - Page: 172\n\n");

// Solution

//*****Data*****//
Cp = 21;// [J/kmol]
T1 = 300;// [K]
T2 = 500;// [K]
S1 = 150;// [Entropy at T1, J/kmol]
//*************//

// This is a constant Entropy process. Therefore:
deltaS = Cp*log(T2/T1);// [J/kmol]
S2 = S1 + deltaS;// [J/kmol]
printf("Entropy at 500 K is %.2f J/kmol",S2);