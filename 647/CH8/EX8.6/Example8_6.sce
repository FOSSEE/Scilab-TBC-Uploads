clear;
clc;

// Example: 8.6
// Page: 303

printf("Example: 8.6 - Page: 303\n\n");

// Solution

//*****Data******//
Tl = 273;// [K]
Th = 313;// [K]
H1 = 187;// [Enthalpy of saturated vapour at 273 K, kJ/kg]
H3 = 74;// [Enthalpy of saturated liquid at 313 K,kJ/kg]
H4 = H3;// [kJ/kg]
H2 = 204;// [Enthalpy of Supersaturated Vapour at 273 K, kJ/kg]
//****************//

// Solution (i)
// COP = Ql/Wnet;
COP = ((H1 - H4)/(H2 - H1));
printf("Enthalpy of saturated vapour is %.2f\n",COP);

// Solution (ii)
Ref_Effect = H1 - H4;// [kJ/kg]
printf("Refrigerating Effect is %d kJ/kg\n",Ref_Effect);

// Solution (iii)
COP = Tl/(Th - Tl);
printf("The COP of an ideal Carnot refrigerator is %.2f\n",COP);

// Solution (iv)
W = H2 - H1;// [kJ/kg]
printf("Work done by the compression is %.2f kJ/kg\n",W);