clear;
clc;

// Example: 8.2
// Page: 298

printf("Example: 8.2 - Page: 298\n\n");

// Solution

//*****Data******//
Tl = -10 + 273;// [K]
Th = 45 + 273;// [K]
Ql = 1;// [ton]
//*************//

// Solution (a)
COP = Tl/(Th - Tl);
Wnet = Ql*3.516/COP;// [kW]
printf("The power consumption is %.3f kW\n",Wnet);

// Solution (b)
Tl = -20 + 273;// [K]
Th = 45 + 273;// [K]
COP = Tl/(Th - Tl);
Ql = Wnet*COP;// [kW]
printf("Cooling Effect produced is %.3f kW\n",Ql);