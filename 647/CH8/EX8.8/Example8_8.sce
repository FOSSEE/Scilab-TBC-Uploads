clear;
clc;

// Example: 8.8
// Page: 305

printf("Example: 8.8 - Page: 305\n\n");

// Solution

//*****Data******//
Ql = 5;// [tons]
Tl = -10 + 273;// [K]
Th = 35 + 273;// [K]
eta = 0.85;
H1 = 183.2;// [Enthalpy of saturated vapour at 263 K, kJ/kg]
H2 = 208.3;// [Enthalpy of superheated vapour, kJ/kg]
H3 = 69.5;// [Enthalpy of saturated vapour at 308 K, kJ/kg]
H4 = H3;// [kJ/kg]
//***************//

// Solution (a)
// Mass flow rate:
Ql = Ql*3.516;// [kW]
mdot = Ql/(H1 - H4);// [kW]
printf("Mass flow rate of the refrigerant is %.4f kg/s\n",mdot);

// Solution (b)
W = H2 - H1;// [kJ/kg]
Wnet = W*mdot/eta;// [kW]
printf("Power consumption in the compression is %.2f kW\n",Wnet);

// Solution (c)
Qh = Ql + Wnet;// [kW]
printf("The amount of heat rejected in the condenser is %.2f kW\n",Qh);

// Solution (d)
COP_VapourCompression = (H1 - H4)/(H2 - H1);
COP_Carnot = Tl/(Th - Tl);
COP_relative = COP_VapourCompression/COP_Carnot;
printf("Relative COP is %.2f\n",COP_relative);