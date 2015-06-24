clear;
clc;

// Example: 8.4
// Page: 299

printf("Example: 8.4 - Page: 299\n\n");

// Solution

//*****Data******//
Th = 273 + 24;// [K]
Tl = 0 + 273;// [K]
Qh = 25;// [kW]
//*************//

COP = Th/(Th - Tl);
Wnet = Qh/COP;// [kW]
printf("Coeffecient of performance of Carnot Heat Pump is %.2f\n",COP);
printf("Power input can be estimated as %.2f kW\n",Wnet);