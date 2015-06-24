clear;
clc;

// Example: 8.5
// Page: 299

printf("Example: 8.5 - Page: 299\n\n");

// Solution

//*****Data******//
Tl = -2 + 273;// [K]
Th = 20 + 273;// [K]
Qh = 80000;// [kJ/h]
//*************//

Ql = Qh*Tl/Th;// [kJ/h]
Wnet = Qh - Ql;// [kJ/h]
printf("Minimum Power input required is %.3f kW\n",Wnet/3600);