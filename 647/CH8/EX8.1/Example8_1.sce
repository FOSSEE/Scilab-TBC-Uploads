clear;
clc;

// Example: 8.1
// Page: 297

printf("Example: 8.1 - Page: 297\n\n");

// Solution

//*****Data******//
Tl = 273 - 4;// [K]
Th = 273 + 30;// [K]
Ql = 30;// [kW]
//*************//

// Solution (a)
COP = Tl/(Th - Tl);
printf("The coeffecient of performance of the cycle is %.2f\n",COP);

// Solution (b)
Wnet = Ql/COP;// [kW]
printf("The power required is %.2f kW\n",Wnet);

// Solution (c)
Qh = Wnet + Ql;// [kW]
printf("The rate of heat rejection in the room is %.2f kW",Qh);