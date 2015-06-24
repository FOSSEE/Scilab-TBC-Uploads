clear;
clc;

// Example: 5.5
// Page: 152

printf("Example: 5.5 - Page: 152\n\n");

// Solution

//*****Data*****//
Th = 373;// [K]
Tl = 275;// [K]
Qh = 50;// [kJ]
//*************//

// Solution (a)
// Theral Efficiency of the engine can be given as:
// eta_HE = Wnet/Qh;
// Wnet = Qh*COP = Qh*(Th - Tl)/Th;
Wnet = Qh*(Th - Tl)/Th;// [kJ]
printf("Minimum Work Required is %.1f kJ\n",Wnet);

// Solution (b)
eta = (Th - Tl)/Th;
printf("The efficiency of Heat Engine is %.3f\n",eta);

// Solution (c)
// Amount of heat released can be calculated as:
// eta = Net Work Output/Net Work Input;
// eta = Wnet/Qin;
// eta = (Qin - Qout)/Qin;
Qin = Qh;// [kJ]
Qout = Qin*(1 - eta);
printf("Amount of Heat released is %.1f kJ\n",Qout);