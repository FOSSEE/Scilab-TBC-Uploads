clear;
clc;

// Example: 4.11
// Page: 130

printf("Example: 4.11 - Page: 130\n\n");

// Solution

//*****Data*****//
CO2 = 13.4;// [percent by volume]
N2 = 80.5;// [percent by volume]
O2 = 6.1;// [percent by volume]
//*************//

// Basis : 100 cubic m of flue gas.
Vol_N2_flue = N2;// [Volume of Nitrogen in flue gas, cubic m]
Vol_O2_flue = O2;// [Volume of O2 in flue gas, cubic m]
Vol_Air = N2/0.79;// [Volume of air supplied, cubic m]
Vol_O2 = Vol_Air*0.21;// [Volume of O2 in air supply, cubic m]
Vol_O2_cumbustion = Vol_O2 - Vol_O2_flue;// [Volume of O2 used up in cumbustion of the fuel, cubic m]
Excess_Air = Vol_O2_flue/Vol_O2_cumbustion * 100;// [percent of excess air supplied]
printf("Percent of excess air supplied is %.1f %%",Excess_Air);