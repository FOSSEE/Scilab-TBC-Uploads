clear;
clc;

// Example: 10.3
// Page: 400

printf("Example: 10.3 - Page: 400\n\n");

// Solution

//*****Data******//
x1 = 0.6;// [mole fraction of ethylene]
x2 = 0.4;// [mole fraction of propylene]
T = 423;// [K]
P1_sat = 15.2;// [vapour pressure of ethylene, atm]
P2_sat = 9.8;// [vapour pressure of propylene, atm]
//**************//

P = x1*P1_sat + x2*P2_sat;// [atm]
printf("The total pressure is %.2f atm\n",P);
// In vapour phase:
y1 = x1*P1_sat/P;// [mole fraction of ethylene]
y2 = x2*P2_sat/P;// [mole fraction of propylene]
printf("Mole fraction of ethylene in vapour phase is %.1f\n",y1);
printf("Mole fraction of propylene in the vapour phase is %.1f\n",y2);