clear;
clc;

// Example: 2.12
// Page: 57

printf("Example: 2.12 - Page: 57\n\n");

// Solution

//*****Data*****//
m = 1;// [kg]
P1 = 8;// [atm]
T1 = 50 + 273;// [K]
// V1 = V;// [L]
// V2 = 5V;// [L]
V1_by_V2 = 1/5;
gama = 1.4;
R = 0.082;// [L-atm]
//***************//

// Adiabatic process:
printf("Adiabatic Process \n");
P2 = P1*V1_by_V2^gama;// [atm]
printf("Final Pressure is %.2f atm\n",P2);
T2 = T1*V1_by_V2^(gama - 1);// [K]
printf("Final Temperature is %f K\n",T2);
Wad = R*(T2 - T1)/(1 - gama);// [L-atm]
printf("Adiabatic Work done is %.3f L-atm\n",Wad);
printf("\n")

// Isothermal Process:
printf("Isothermal Process\n")
// In an isothermal Process, the temperature remans constant:
T2 = T1;// [K]
printf("Final temperature is %d K\n",T2);
// From the ideal gas:
// (P2*V2/T2) = (P1*V1/T1)
// Since T2 = T1
// P2*V2 = P1*V1
P2 = P1*V1_by_V2;// [atm]
printf("Final pressure is %.1f atm\n",P2);
W = R*T1*log(1/V1_by_V2);// [L-atm]
printf("Work done during the isothermal process is %.2f L-atm\n",W);