clear;
clc;

// Example: 5.4
// Page: 151

printf("Example: 5.4 - Page: 151\n\n");

// Solution

//*****Data*****//
m = 1;// [kg]
Tl = 273;// [K]
Th = 295;// [K]
Ql = 335;// [kJ/kg]
//*************//

// Solution (a)
// The coeffecient of performance of refrigerating machine is:
// COP = Ql/Wnet = Tl/(Th - Tl)
Wnet = Ql*(Th - Tl)/Tl;// [kJ]
printf("Minimum Work requirement is %d kJ\n",round(Wnet));

// Solution (b)
// Amount of heat released:
// Wnet = Qh - Ql
Qh = Wnet + Ql;// [kJ]
printf("Amount of heat released to the surrounding is %d kJ\n",round(Qh));